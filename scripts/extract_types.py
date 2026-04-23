#!/usr/bin/env python3
"""
Second-pass extractor that walks the vendored Python SDK's `types/` directory
and emits a schema describing each Pydantic model, discriminated union, and
enum alias. The output complements `spec.json` (which only carries
method-level signatures) by giving Ruby callers a machine-readable view of
the complex request/response shapes the gem otherwise treats as opaque.

Emits `lib/elevenlabs/types.json` with the following layout:

    {
      "types": {
        "<TypeName>": {
          "kind": "model" | "union" | "enum" | "alias",
          ...kind-specific fields
        }
      },
      "count": <int>,
      "source_commit": "<git sha or unknown>"
    }

Models:   { kind, fields: [{name, annotation, optional, default, doc,
                             is_discriminator, literal_value}],
             variant_of?, discriminant_value? }
Unions:   { kind, discriminant, variants: [{name, discriminant_value}] }
Enums:    { kind, values: [str, ...] }
Aliases:  { kind, annotation }
"""

from __future__ import annotations

import ast
import json
import subprocess
import sys
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

PY_SDK_ROOT = Path(__file__).resolve().parent.parent / "tmp-elevenlabs-python" / "src" / "elevenlabs"
TYPES_DIR = PY_SDK_ROOT / "types"
OUTPUT = Path(__file__).resolve().parent.parent / "lib" / "elevenlabs" / "types.json"


def unparse(node: Optional[ast.AST]) -> Optional[str]:
    if node is None:
        return None
    return ast.unparse(node)


def annotation_is_optional(node: ast.AST) -> bool:
    """typing.Optional[X] or X | None."""
    if isinstance(node, ast.Subscript):
        value = node.value
        if isinstance(value, ast.Attribute) and value.attr == "Optional":
            return True
        if isinstance(value, ast.Name) and value.id == "Optional":
            return True
    if isinstance(node, ast.BinOp) and isinstance(node.op, ast.BitOr):
        for side in (node.left, node.right):
            if isinstance(side, ast.Constant) and side.value is None:
                return True
    return False


def literal_single_value(node: ast.AST) -> Optional[Any]:
    """If node is typing.Literal["x"] with a single value, return "x"."""
    if not isinstance(node, ast.Subscript):
        return None
    value = node.value
    name = None
    if isinstance(value, ast.Attribute) and value.attr == "Literal":
        name = "Literal"
    elif isinstance(value, ast.Name) and value.id == "Literal":
        name = "Literal"
    if name is None:
        return None
    slice_ = node.slice
    if isinstance(slice_, ast.Constant):
        return slice_.value
    return None


def extract_pydantic_field_default(node: ast.AST) -> Tuple[Optional[Any], bool]:
    """For `pydantic.Field(default=X, ...)`, return (default, is_literal_ok)."""
    if not isinstance(node, ast.Call):
        return None, False
    func = node.func
    is_field = (
        isinstance(func, ast.Attribute) and func.attr == "Field"
    ) or (isinstance(func, ast.Name) and func.id == "Field")
    if not is_field:
        return None, False
    for kw in node.keywords:
        if kw.arg == "default":
            if isinstance(kw.value, ast.Constant):
                return kw.value.value, True
            return unparse(kw.value), False
    return None, True  # Field() with no default ≈ required


def parse_default(node: Optional[ast.AST]) -> Any:
    if node is None:
        return "__REQUIRED__"
    if isinstance(node, ast.Constant):
        return node.value
    default, _ok = extract_pydantic_field_default(node)
    if default is not None or isinstance(node, ast.Call):
        return default
    return unparse(node)


def is_unchecked_base_model(node: ast.ClassDef) -> bool:
    for base in node.bases:
        if isinstance(base, ast.Name) and base.id == "UncheckedBaseModel":
            return True
        if isinstance(base, ast.Attribute) and base.attr == "UncheckedBaseModel":
            return True
    return False


def extract_docstring_after(body: List[ast.stmt], idx: int) -> Optional[str]:
    """A bare string expression immediately following an AnnAssign is its docstring."""
    if idx + 1 >= len(body):
        return None
    nxt = body[idx + 1]
    if isinstance(nxt, ast.Expr) and isinstance(nxt.value, ast.Constant) and isinstance(nxt.value.value, str):
        return nxt.value.value.strip()
    return None


def parse_model_class(cls: ast.ClassDef) -> Dict[str, Any]:
    fields: List[Dict[str, Any]] = []
    discriminant_value: Optional[Any] = None
    for idx, stmt in enumerate(cls.body):
        if not isinstance(stmt, ast.AnnAssign):
            continue
        target = stmt.target
        if not isinstance(target, ast.Name):
            continue
        name = target.id
        # Skip pydantic v2 `model_config: ClassVar[...]` declarations.
        if name == "model_config":
            continue
        annotation_src = unparse(stmt.annotation) or ""
        optional = annotation_is_optional(stmt.annotation)
        literal = literal_single_value(stmt.annotation)
        default = parse_default(stmt.value)
        doc = extract_docstring_after(cls.body, idx)
        field: Dict[str, Any] = {
            "name": name,
            "annotation": annotation_src,
            "optional": optional,
            "default": default,
            "doc": doc,
        }
        if literal is not None:
            field["literal_value"] = literal
            if name == "type":
                discriminant_value = literal
        fields.append(field)
    result: Dict[str, Any] = {"kind": "model", "fields": fields}
    if "_" in cls.name:
        result["variant_class"] = True
    if discriminant_value is not None:
        result["discriminant_value"] = discriminant_value
    return result


def parse_union_alias(assign: ast.Assign) -> Optional[Tuple[str, Dict[str, Any]]]:
    """
    Detect `X = typing_extensions.Annotated[typing.Union[A, B, ...], UnionMetadata(discriminant="...")]`.
    """
    if len(assign.targets) != 1 or not isinstance(assign.targets[0], ast.Name):
        return None
    name = assign.targets[0].id
    value = assign.value
    if not isinstance(value, ast.Subscript):
        return None
    outer = value.value
    is_annotated = (
        (isinstance(outer, ast.Attribute) and outer.attr == "Annotated")
        or (isinstance(outer, ast.Name) and outer.id == "Annotated")
    )
    if not is_annotated:
        return None
    slice_node = value.slice
    if not isinstance(slice_node, ast.Tuple) or len(slice_node.elts) < 2:
        return None
    union_expr, metadata_expr = slice_node.elts[0], slice_node.elts[1]
    if not isinstance(union_expr, ast.Subscript):
        return None
    union_head = union_expr.value
    is_union = (
        (isinstance(union_head, ast.Attribute) and union_head.attr == "Union")
        or (isinstance(union_head, ast.Name) and union_head.id == "Union")
    )
    if not is_union:
        return None
    slice_inner = union_expr.slice
    if isinstance(slice_inner, ast.Tuple):
        variant_nodes = slice_inner.elts
    else:
        variant_nodes = [slice_inner]
    variants = [v.id for v in variant_nodes if isinstance(v, ast.Name)]
    discriminant = None
    if isinstance(metadata_expr, ast.Call):
        for kw in metadata_expr.keywords:
            if kw.arg == "discriminant" and isinstance(kw.value, ast.Constant):
                discriminant = kw.value.value
    return name, {"kind": "union", "discriminant": discriminant, "variants": variants}


def parse_enum_alias(assign: ast.Assign) -> Optional[Tuple[str, Dict[str, Any]]]:
    """
    Detect `X = typing.Union[typing.Literal["a", "b", ...], typing.Any]`
    (possibly with the Any arm or wrapped differently — we accept any Union
    whose first arg is a Literal).
    """
    if len(assign.targets) != 1 or not isinstance(assign.targets[0], ast.Name):
        return None
    name = assign.targets[0].id
    value = assign.value
    if not isinstance(value, ast.Subscript):
        return None
    head = value.value
    is_union = (
        (isinstance(head, ast.Attribute) and head.attr == "Union")
        or (isinstance(head, ast.Name) and head.id == "Union")
    )
    if not is_union:
        return None
    slice_ = value.slice
    args = slice_.elts if isinstance(slice_, ast.Tuple) else [slice_]
    if not args:
        return None
    first = args[0]
    if not isinstance(first, ast.Subscript):
        return None
    first_head = first.value
    is_literal = (
        (isinstance(first_head, ast.Attribute) and first_head.attr == "Literal")
        or (isinstance(first_head, ast.Name) and first_head.id == "Literal")
    )
    if not is_literal:
        return None
    lit_args = first.slice.elts if isinstance(first.slice, ast.Tuple) else [first.slice]
    values = [a.value for a in lit_args if isinstance(a, ast.Constant)]
    if not values:
        return None
    return name, {"kind": "enum", "values": values}


def parse_simple_alias(assign: ast.Assign) -> Optional[Tuple[str, Dict[str, Any]]]:
    if len(assign.targets) != 1 or not isinstance(assign.targets[0], ast.Name):
        return None
    name = assign.targets[0].id
    return name, {"kind": "alias", "annotation": unparse(assign.value)}


def parse_file(path: Path) -> Dict[str, Dict[str, Any]]:
    out: Dict[str, Dict[str, Any]] = {}
    tree = ast.parse(path.read_text())
    for node in tree.body:
        if isinstance(node, ast.ClassDef) and is_unchecked_base_model(node):
            out[node.name] = parse_model_class(node)
        elif isinstance(node, ast.Assign):
            union = parse_union_alias(node)
            if union is not None:
                n, payload = union
                out[n] = payload
                continue
            enum = parse_enum_alias(node)
            if enum is not None:
                n, payload = enum
                out[n] = payload
                continue
            # Don't emit simple aliases — they add noise and usually point
            # to other extracted types. Kept as a hook if we want them later.
    return out


def tag_variants(types: Dict[str, Dict[str, Any]]) -> None:
    for name, payload in types.items():
        if payload.get("kind") != "union":
            continue
        for variant in payload.get("variants", []):
            v = types.get(variant)
            if v and v.get("kind") == "model":
                v["variant_of"] = name


def source_commit() -> str:
    try:
        sha = subprocess.check_output(
            ["git", "-C", str(PY_SDK_ROOT.parent.parent.parent / "tmp-elevenlabs-python"), "rev-parse", "HEAD"],
            stderr=subprocess.DEVNULL,
        )
        return sha.decode().strip()
    except Exception:
        return "unknown"


def build() -> Dict[str, Any]:
    all_types: Dict[str, Dict[str, Any]] = {}
    for path in sorted(TYPES_DIR.rglob("*.py")):
        if path.name == "__init__.py":
            continue
        try:
            file_types = parse_file(path)
        except SyntaxError as exc:
            print(f"Skipping {path.name}: {exc}", file=sys.stderr)
            continue
        for name, payload in file_types.items():
            all_types[name] = payload
    tag_variants(all_types)
    return {
        "count": len(all_types),
        "source_commit": source_commit(),
        "types": dict(sorted(all_types.items())),
    }


def main() -> None:
    if not TYPES_DIR.exists():
        print(f"Python SDK types dir not found at {TYPES_DIR}", file=sys.stderr)
        sys.exit(1)
    spec = build()
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT.write_text(json.dumps(spec, indent=2))
    print(f"Wrote {OUTPUT} — {spec['count']} types")


if __name__ == "__main__":
    main()

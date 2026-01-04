#!/usr/bin/env python3
"""
Utility script that parses the auto-generated Python SDK and emits a neutral
operation specification used by the Ruby gem to auto-generate its client
surface.
"""

from __future__ import annotations

import ast
import json
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

PY_SDK_ROOT = Path(__file__).resolve().parent.parent / "tmp-elevenlabs-python" / "src" / "elevenlabs"
SPEC_OUTPUT = Path(__file__).resolve().parent.parent / "lib" / "elevenlabs" / "spec.json"

PLACEHOLDER_PREFIX = "__param__"
PLACEHOLDER_SUFFIX = "__"


def placeholder(name: str) -> str:
    return f"{PLACEHOLDER_PREFIX}{name}{PLACEHOLDER_SUFFIX}"


def is_placeholder(value: Any) -> bool:
    return isinstance(value, str) and value.startswith(PLACEHOLDER_PREFIX) and value.endswith(PLACEHOLDER_SUFFIX)


def placeholder_name(value: str) -> str:
    return value[len(PLACEHOLDER_PREFIX) : -len(PLACEHOLDER_SUFFIX)]


class Dummy:
    def __init__(self, name: str):
        self._name = name

    def __call__(self, *args: Any, **kwargs: Any) -> "Dummy":
        return self

    def __getattr__(self, item: str) -> "Dummy":
        return self

    def __repr__(self) -> str:
        return f"<Dummy {self._name}>"


EVAL_GLOBALS: Dict[str, Any] = {
    "__builtins__": __builtins__,
    "json": __import__("json"),
    "typing": __import__("typing"),
}


def jsonable_encoder(value: Any, **_: Any) -> Any:
    return value


def convert_and_respect_annotation_metadata(*args: Any, **kwargs: Any) -> Any:
    if "object_" in kwargs:
        return kwargs["object_"]
    return args[0] if args else None


def construct_type(*args: Any, **kwargs: Any) -> Any:  # pragma: no cover - helper for evaluation compatibility
    if "object_" in kwargs:
        return kwargs["object_"]
    return args[1] if len(args) > 1 else (args[0] if args else None)


EVAL_GLOBALS["jsonable_encoder"] = jsonable_encoder
EVAL_GLOBALS["convert_and_respect_annotation_metadata"] = convert_and_respect_annotation_metadata
EVAL_GLOBALS["construct_type"] = construct_type
EVAL_GLOBALS["OMIT"] = object()


def eval_node(node: ast.AST, locals_env: Dict[str, Any]) -> Any:
    expr = ast.Expression(node)
    code = compile(expr, filename="<ast>", mode="eval")
    while True:
        try:
            return eval(code, EVAL_GLOBALS, locals_env)
        except NameError as exc:  # pragma: no cover - used during generation only
            name = exc.args[0].split("'")[1]
            EVAL_GLOBALS[name] = Dummy(name)


def find_call(node: ast.FunctionDef) -> Tuple[ast.Call, bool]:
    for stmt in node.body:
        if isinstance(stmt, ast.Assign) and isinstance(stmt.value, ast.Call):
            if is_http_call(stmt.value, "request"):
                return stmt.value, False
        if isinstance(stmt, ast.With):
            for item in stmt.items:
                if isinstance(item.context_expr, ast.Call) and is_http_call(item.context_expr, "stream"):
                    return item.context_expr, True
    raise RuntimeError(f"Unable to locate http call within {node.name}")


def is_http_call(call: ast.Call, attr: str) -> bool:
    if not isinstance(call.func, ast.Attribute):
        return False
    if call.func.attr != attr:
        return False
    client_attr = call.func.value
    if not isinstance(client_attr, ast.Attribute) or client_attr.attr != "httpx_client":
        return False
    wrapper_attr = client_attr.value
    return isinstance(wrapper_attr, ast.Attribute) and wrapper_attr.attr == "_client_wrapper"


def path_from_node(node: ast.AST, locals_env: Dict[str, Any]) -> Tuple[str, List[str]]:
    rendered = eval_node(node, locals_env)
    params: List[str] = []
    path = rendered
    while True:
        start = path.find(PLACEHOLDER_PREFIX)
        if start == -1:
            break
        end = path.find(PLACEHOLDER_SUFFIX, start + len(PLACEHOLDER_PREFIX))
        if end == -1:
            break
        name = path[start + len(PLACEHOLDER_PREFIX) : end]
        params.append(name)
        path = path.replace(f"{PLACEHOLDER_PREFIX}{name}{PLACEHOLDER_SUFFIX}", f"{{{name}}}", 1)
    return path, params


def extract_literal_and_assignments(value: Any):
    literal = extract_literal(value)
    assignments: List[Dict[str, Any]] = []
    collect_assignments(value, [], assignments)
    return literal, assignments


def extract_literal(value: Any):
    if is_placeholder(value):
        return None
    if isinstance(value, dict):
        literal_dict = {}
        has_literal = False
        for key, val in value.items():
            literal_val = extract_literal(val)
            if literal_val is not None:
                has_literal = True
                literal_dict[key] = literal_val
        return literal_dict if has_literal else None
    if isinstance(value, list):
        literal_list = []
        has_literal = False
        for item in value:
            lit = extract_literal(item)
            if lit is not None:
                has_literal = True
            literal_list.append(lit)
        return literal_list if has_literal else None
    if isinstance(value, tuple):
        return [extract_literal(item) for item in value]
    return value


def collect_assignments(value: Any, path: List[Any], out: List[Dict[str, Any]]):
    if is_placeholder(value):
        out.append({"path": list(path), "param": placeholder_name(value)})
        return
    if isinstance(value, dict):
        for key, val in value.items():
            collect_assignments(val, path + [key], out)
    elif isinstance(value, list):
        for idx, item in enumerate(value):
            collect_assignments(item, path + [idx], out)
    elif isinstance(value, tuple):
        for idx, item in enumerate(value):
            collect_assignments(item, path + [idx], out)


def flatten_dict(value: Optional[Dict[str, Any]]) -> List[Dict[str, Any]]:
    if not value:
        return []
    out: List[Dict[str, Any]] = []
    for key, val in value.items():
        if is_placeholder(val):
            out.append({"name": key, "param": placeholder_name(val)})
        else:
            out.append({"name": key, "literal": val})
    return out


def parse_files(value: Optional[Dict[str, Any]]):
    if not value:
        return []
    entries = []
    for key, val in value.items():
        entries.append({"name": key, "value": parse_file_value(val)})
    return entries


def parse_file_value(value: Any):
    if is_placeholder(value):
        return {"type": "param", "name": placeholder_name(value)}
    if isinstance(value, tuple):
        tuple_list = list(value)
        payload = {"type": "tuple"}
        if tuple_list:
            payload["filename"] = tuple_list[0]
        if len(tuple_list) > 1:
            payload["content"] = parse_file_value(tuple_list[1])
        if len(tuple_list) > 2:
            payload["content_type"] = tuple_list[2]
        if len(tuple_list) > 3:
            payload["headers"] = tuple_list[3]
        return payload
    if isinstance(value, list):
        return {"type": "list", "items": [parse_file_value(item) for item in value]}
    return {"type": "literal", "value": value}


def default_value(node: Optional[ast.AST]):
    if node is None:
        return None
    if isinstance(node, ast.Constant):
        return node.value
    if isinstance(node, ast.Name) and node.id == "OMIT":
        return "__OMIT__"
    try:
        return ast.literal_eval(node)
    except Exception:
        return None


@dataclass
class Parameter:
    name: str
    kind: str
    default: Any = None


def parse_parameters(node: ast.FunctionDef) -> Tuple[List[Parameter], List[Parameter]]:
    args = node.args
    positional: List[Parameter] = []
    defaults = list(args.defaults)
    positional_args = args.args[1:]  # skip self
    diff = len(positional_args) - len(defaults)
    for idx, arg in enumerate(positional_args):
        default_node = defaults[idx - diff] if idx >= diff else None
        positional.append(Parameter(name=arg.arg, kind="positional", default=default_value(default_node)))
    keyword: List[Parameter] = []
    kw_defaults = args.kw_defaults
    for arg, default_node in zip(args.kwonlyargs, kw_defaults):
        keyword.append(Parameter(name=arg.arg, kind="keyword", default=default_value(default_node)))
    return positional, keyword


def locals_for_parameters(positional: List[Parameter], keyword: List[Parameter]):
    env = {}
    for param in positional + keyword:
        env[param.name] = placeholder(param.name)
    return env


def parse_method(node: ast.FunctionDef, file_path: Path):
    positional_params, keyword_params = parse_parameters(node)
    locals_env = locals_for_parameters(positional_params, keyword_params)
    call, streaming = find_call(node)
    method = None
    params_node = None
    json_node = None
    data_node = None
    files_node = None
    headers_node = None
    force_multipart = False
    for kw in call.keywords:
        if kw.arg == "method":
            method = eval_node(kw.value, locals_env)
        elif kw.arg == "params":
            params_node = eval_node(kw.value, locals_env)
        elif kw.arg == "json":
            json_node = eval_node(kw.value, locals_env)
        elif kw.arg == "data":
            data_node = eval_node(kw.value, locals_env)
        elif kw.arg == "files":
            files_node = eval_node(kw.value, locals_env)
        elif kw.arg == "headers":
            headers_node = eval_node(kw.value, locals_env)
        elif kw.arg == "force_multipart":
            force_multipart = bool(eval_node(kw.value, locals_env))
    path_template, path_params = path_from_node(call.args[0], locals_env)
    json_literal, json_assignments = extract_literal_and_assignments(json_node) if json_node is not None else (None, [])
    data_literal, data_assignments = extract_literal_and_assignments(data_node) if data_node is not None else (None, [])
    return {
        "name": node.name,
        "doc": ast.get_docstring(node),
        "positional_params": [param.__dict__ for param in positional_params],
        "keyword_params": [param.__dict__ for param in keyword_params],
        "request": {
            "method": method or "GET",
            "path": {"template": path_template, "params": path_params},
            "query": flatten_dict(params_node),
            "json": {"literal": json_literal, "assignments": json_assignments} if json_node is not None else None,
            "form": {"literal": data_literal, "assignments": data_assignments} if data_node is not None else None,
            "files": parse_files(files_node),
            "headers": headers_node or {},
            "force_multipart": force_multipart,
            "streaming": streaming,
        },
    }


def ensure_tree(node: Dict[str, Any], parts: List[str]) -> Dict[str, Any]:
    current = node
    for part in parts:
        children = current.setdefault("children", {})
        current = children.setdefault(part, {"operations": [], "children": {}})
    return current


def build_spec():
    tree = {"operations": [], "children": {}}
    raw_files = list(PY_SDK_ROOT.rglob("raw_client.py"))
    raw_base = PY_SDK_ROOT / "raw_base_client.py"
    if raw_base.exists():
        raw_files.append(raw_base)
    for path in sorted(raw_files):
        rel = path.relative_to(PY_SDK_ROOT)
        if path.name == "raw_base_client.py":
            parts: List[str] = []
        else:
            parts = list(rel.parts[:-1])
        module = ast.parse(path.read_text())
        for node in module.body:
            if isinstance(node, ast.ClassDef) and node.name.startswith("Raw") and not node.name.startswith("Async"):
                target = ensure_tree(tree, parts)
                for item in node.body:
                    if isinstance(item, ast.FunctionDef) and item.name != "__init__":
                        target["operations"].append(parse_method(item, path))
    return tree


def main():
    spec = build_spec()
    SPEC_OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    SPEC_OUTPUT.write_text(json.dumps(spec, indent=2))
    print(f"Wrote spec with {SPEC_OUTPUT}")


if __name__ == "__main__":
    if not PY_SDK_ROOT.exists():
        print(f"Python SDK directory not found at {PY_SDK_ROOT}", file=sys.stderr)
        sys.exit(1)
    main()

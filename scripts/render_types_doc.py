#!/usr/bin/env python3
"""
Render `lib/elevenlabs/types.json` into `docs/types.md` — a human-readable
reference for the Pydantic models behind the gem's opaque Hash parameters.

Grouped top-down:
  1. Unions (with their variants and discriminant values)
  2. Models (non-variant)
  3. Variant classes (grouped under their union)
  4. Enums

Ruby-ify annotations: turn `typing.Optional[X]` into `X (optional)`,
`typing.List[X]` into `Array<X>`, `typing.Dict[K, V]` into `Hash<K, V>`,
strip `typing.` / `typing_extensions.` prefixes. Cross-reference other
types with Markdown anchors.
"""

from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TYPES_JSON = ROOT / "lib" / "elevenlabs" / "types.json"
OUT = ROOT / "docs" / "types.md"


def ruby_ify(annotation: str) -> str:
    s = annotation
    s = re.sub(r"typing_extensions\.", "", s)
    s = re.sub(r"typing\.", "", s)
    s = re.sub(r"List\[", "Array<", s)
    s = re.sub(r"Dict\[", "Hash<", s)
    s = re.sub(r"Optional\[", "Optional<", s)
    s = re.sub(r"Union\[", "Union<", s)
    s = re.sub(r"Literal\[", "Literal<", s)
    s = s.replace("]", ">")
    return s


def anchor(name: str) -> str:
    # GitHub's slugifier lowercases and preserves underscores, so we match
    # that — don't replace `_` with `-` or variant-class anchors will 404.
    return name.lower()


def link_types(annotation_ruby: str, known: set) -> str:
    """Wrap bare type names in Markdown links if they match a known type."""
    def replace(match: re.Match) -> str:
        name = match.group(0)
        if name in known:
            return f"[{name}](#{anchor(name)})"
        return name

    return re.sub(r"[A-Z][A-Za-z0-9_]+", replace, annotation_ruby)


def format_default(value) -> str:
    if value == "__REQUIRED__":
        return "**required**"
    if value is None:
        return "`nil`"
    if isinstance(value, str):
        return f"`{value!r}`"
    return f"`{value}`"


def render_model(name: str, payload: dict, known: set) -> list[str]:
    lines = [f"### {name}", ""]
    if payload.get("variant_of"):
        lines.append(
            f"Variant of [{payload['variant_of']}](#{anchor(payload['variant_of'])}) "
            f"with `type: '{payload.get('discriminant_value')}'`."
        )
        lines.append("")
    fields = payload.get("fields", [])
    if not fields:
        lines.append("_(no fields)_")
        lines.append("")
        return lines
    lines.append("| Field | Type | Required | Default | Notes |")
    lines.append("| --- | --- | --- | --- | --- |")
    for f in fields:
        annotation = link_types(ruby_ify(f["annotation"]), known)
        required = "no" if f["optional"] or f["default"] != "__REQUIRED__" else "**yes**"
        default = format_default(f["default"])
        doc = (f.get("doc") or "").replace("\n", " ")
        lines.append(f"| `{f['name']}` | {annotation} | {required} | {default} | {doc} |")
    lines.append("")
    return lines


def render_union(name: str, payload: dict) -> list[str]:
    lines = [f"### {name}", ""]
    disc = payload.get("discriminant")
    if disc:
        lines.append(f"Discriminated union on `{disc}`. Variants:")
    else:
        lines.append("Union. Variants:")
    lines.append("")
    for variant in payload.get("variants", []):
        lines.append(f"- [{variant}](#{anchor(variant)})")
    lines.append("")
    return lines


def render_enum(name: str, payload: dict) -> list[str]:
    lines = [f"### {name}", ""]
    lines.append("One of:")
    lines.append("")
    for v in payload.get("values", []):
        lines.append(f"- `{v!r}`")
    lines.append("")
    return lines


def main() -> None:
    data = json.loads(TYPES_JSON.read_text())
    types = data["types"]
    known = set(types.keys())

    unions = {n: t for n, t in types.items() if t["kind"] == "union"}
    models = {n: t for n, t in types.items() if t["kind"] == "model" and not t.get("variant_class")}
    variants = {n: t for n, t in types.items() if t["kind"] == "model" and t.get("variant_class")}
    enums = {n: t for n, t in types.items() if t["kind"] == "enum"}

    lines: list[str] = []
    lines.append("# ElevenLabs Ruby SDK — Type Reference")
    lines.append("")
    lines.append(
        "Auto-generated from `lib/elevenlabs/types.json` by "
        "`scripts/render_types_doc.py`. Describes the nested Hash shapes expected "
        "by operation parameters the gem otherwise treats as opaque "
        "(`workflow`, `conversation_config`, `platform_settings`, etc.)."
    )
    lines.append("")
    lines.append(f"Source: `tmp-elevenlabs-python` @ `{data.get('source_commit', 'unknown')}` · "
                 f"{data['count']} types ({len(models)} models, {len(unions)} unions, "
                 f"{len(variants)} variant classes, {len(enums)} enums).")
    lines.append("")
    lines.append("## Contents")
    lines.append("")
    lines.append("- [Unions](#unions)")
    lines.append("- [Models](#models)")
    lines.append("- [Variant classes](#variant-classes)")
    lines.append("- [Enums](#enums)")
    lines.append("")

    lines.append("## Unions")
    lines.append("")
    for name in sorted(unions):
        lines.extend(render_union(name, unions[name]))

    lines.append("## Models")
    lines.append("")
    for name in sorted(models):
        lines.extend(render_model(name, models[name], known))

    lines.append("## Variant classes")
    lines.append("")
    lines.append("Discriminated-union variants. Each carries a `type` field with a literal value.")
    lines.append("")
    for name in sorted(variants):
        lines.extend(render_model(name, variants[name], known))

    lines.append("## Enums")
    lines.append("")
    for name in sorted(enums):
        lines.extend(render_enum(name, enums[name]))

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text("\n".join(lines))
    print(f"Wrote {OUT} — {data['count']} types rendered")


if __name__ == "__main__":
    main()

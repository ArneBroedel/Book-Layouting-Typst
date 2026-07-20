#!/usr/bin/env python3
"""Structural checks for toolset/form-catalog/core/forms.yaml.

- version: matches ../VERSION
- every form has id + status
- every stable form has api + package in {bookkit, bookkit-didactics}
- no duplicate ids

stdlib only; uses PyYAML if available, else a minimal line parser for this schema.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]  # toolset/form-catalog
FORMS = ROOT / "core" / "forms.yaml"
VERSION_FILE = ROOT / "VERSION"
ALLOWED_PACKAGES = {"bookkit", "bookkit-didactics"}
ALLOWED_STATUS = {"stable", "planned", "deprecated"}


def load_version() -> str:
    return VERSION_FILE.read_text(encoding="utf-8").strip()


def parse_with_yaml(text: str) -> dict:
    import yaml  # type: ignore

    return yaml.safe_load(text)


def parse_minimal(text: str) -> dict:
    """Best-effort parser for our forms.yaml shape (no full YAML)."""
    version_m = re.search(r'(?m)^version:\s*["\']?([^"\'\n]+)', text)
    if not version_m:
        raise ValueError("missing version: field")
    version = version_m.group(1).strip()

    forms: list[dict] = []
    current: dict | None = None
    in_forms = False
    for line in text.splitlines():
        if re.match(r"^forms:\s*$", line):
            in_forms = True
            continue
        if not in_forms:
            continue
        if re.match(r"^[a-zA-Z_]", line) and not line.startswith(" "):
            # next top-level key ends forms
            break
        m_id = re.match(r"^  - id:\s*(\S+)\s*$", line)
        if m_id:
            if current:
                forms.append(current)
            current = {"id": m_id.group(1)}
            continue
        if current is None:
            continue
        m_kv = re.match(r"^    (status|purpose|when|api|package|params):\s*(.*)$", line)
        if m_kv:
            key, raw = m_kv.group(1), m_kv.group(2).strip()
            if (raw.startswith('"') and raw.endswith('"')) or (
                raw.startswith("'") and raw.endswith("'")
            ):
                raw = raw[1:-1]
            current[key] = raw
    if current:
        forms.append(current)
    return {"version": version, "forms": forms}


def load_forms() -> dict:
    text = FORMS.read_text(encoding="utf-8")
    try:
        return parse_with_yaml(text)
    except Exception:
        return parse_minimal(text)


def main() -> int:
    errors: list[str] = []
    file_ver = load_version()
    data = load_forms()
    cat_ver = str(data.get("version", "")).strip()
    if cat_ver != file_ver:
        errors.append(f"version mismatch: forms.yaml={cat_ver!r} VERSION={file_ver!r}")

    forms = data.get("forms") or []
    if not isinstance(forms, list):
        errors.append("forms: must be a list")
        forms = []

    ids: set[str] = set()
    stable = planned = deprecated = 0

    for i, form in enumerate(forms):
        if not isinstance(form, dict):
            errors.append(f"forms[{i}]: not a mapping")
            continue
        fid = form.get("id")
        status = form.get("status")
        if not fid:
            errors.append(f"forms[{i}]: missing id")
            continue
        if fid in ids:
            errors.append(f"duplicate id: {fid}")
        ids.add(fid)
        if status not in ALLOWED_STATUS:
            errors.append(f"{fid}: bad status {status!r}")
            continue
        if status == "stable":
            stable += 1
            api = form.get("api")
            package = form.get("package")
            if not api or str(api).startswith("TBD"):
                errors.append(f"{fid}: stable requires real api")
            if package not in ALLOWED_PACKAGES:
                errors.append(f"{fid}: stable package must be bookkit|bookkit-didactics, got {package!r}")
            if not form.get("purpose"):
                errors.append(f"{fid}: stable requires purpose")
        elif status == "planned":
            planned += 1
        else:
            deprecated += 1

    if stable < 12:
        errors.append(f"need ≥12 stable forms, found {stable}")

    print(f"form-catalog check: version={cat_ver} stable={stable} planned={planned} deprecated={deprecated}")
    if errors:
        print("FAIL:")
        for e in errors:
            print(f"  - {e}")
        return 1
    print("OK")
    return 0


if __name__ == "__main__":
    sys.exit(main())

"""Genre minima checks — data loaded from caller-supplied path (no hardcode)."""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any


@dataclass
class MinimaResult:
    ok: bool
    skipped: bool = False
    messages: list[str] = field(default_factory=list)
    details: dict[str, Any] = field(default_factory=dict)


def _load_yaml(path: Path) -> dict[str, Any]:
    text = path.read_text(encoding="utf-8")
    try:
        import yaml  # type: ignore

        data = yaml.safe_load(text)
        if not isinstance(data, dict):
            raise ValueError("minima root must be a mapping")
        return data
    except ImportError:
        return _parse_minima_minimal(text)


def _parse_minima_minimal(text: str) -> dict[str, Any]:
    """Minimal subset parser for minima yaml shape."""
    out: dict[str, Any] = {}

    def scalar(line: str) -> str:
        raw = line.split(":", 1)[1].strip()
        if (raw.startswith('"') and raw.endswith('"')) or (
            raw.startswith("'") and raw.endswith("'")
        ):
            raw = raw[1:-1]
        if raw.lower() in {"true", "false"}:
            return raw.lower()
        return raw

    current_list_key: str | None = None
    current_map_key: str | None = None
    for line in text.splitlines():
        if not line.strip() or line.strip().startswith("#"):
            continue
        m_list_item = re.match(r"^  - (.+)$", line)
        if m_list_item and current_list_key:
            val = m_list_item.group(1).strip()
            if (val.startswith('"') and val.endswith('"')) or (
                val.startswith("'") and val.endswith("'")
            ):
                val = val[1:-1]
            out.setdefault(current_list_key, []).append(val)
            continue
        m_map_item = re.match(r"^  ([a-zA-Z_][\w-]*):\s*(.*)$", line)
        if m_map_item and current_map_key:
            k, v = m_map_item.group(1), m_map_item.group(2).strip()
            if (v.startswith('"') and v.endswith('"')) or (
                v.startswith("'") and v.endswith("'")
            ):
                v = v[1:-1]
            out.setdefault(current_map_key, {})[k] = v
            continue
        m_key = re.match(r"^([a-zA-Z_][\w-]*):\s*(.*)$", line)
        if not m_key:
            continue
        key, rest = m_key.group(1), m_key.group(2).strip()
        if rest == "":
            # start list or map
            # peek-style: assume list if next lines are "  - "
            current_list_key = key
            current_map_key = key
            out[key] = [] if key.endswith("forms") or key.endswith("wishlist") else {}
            if key == "early_window":
                out[key] = {}
                current_list_key = None
                current_map_key = key
            elif key in {
                "early_gatekeeper_forms",
                "forbidden_sole_forms",
                "recommended_forms",
                "planned_wishlist",
            }:
                out[key] = []
                current_list_key = key
                current_map_key = None
            else:
                current_list_key = None
                current_map_key = key
                out[key] = {}
        else:
            current_list_key = None
            current_map_key = None
            if rest.lower() in {"true", "false"}:
                out[key] = rest.lower() == "true"
            else:
                try:
                    out[key] = int(rest)
                except ValueError:
                    if (rest.startswith('"') and rest.endswith('"')) or (
                        rest.startswith("'") and rest.endswith("'")
                    ):
                        rest = rest[1:-1]
                    out[key] = rest
    return out


def load_minima(path: Path | str) -> dict[str, Any]:
    p = Path(path)
    if not p.is_file():
        raise FileNotFoundError(f"genre minima not found: {p}")
    data = _load_yaml(p)
    if "genre" not in data and "distinct_forms_min" not in data:
        raise ValueError(f"minima file missing expected keys: {p}")
    return data


def check_minima(forms_ordered: list[str], minima: dict[str, Any] | None) -> MinimaResult:
    """
    Check distinct_forms_min, early gatekeeper, forbidden sole forms.

    forms_ordered: catalog form ids in first-occurrence order in the .typ.
    """
    if minima is None:
        return MinimaResult(ok=True, skipped=True, messages=["genre minima: skipped (no path)"])

    messages: list[str] = []
    details: dict[str, Any] = {
        "genre": minima.get("genre"),
        "forms_ordered": list(forms_ordered),
    }
    ok = True
    distinct = list(dict.fromkeys(forms_ordered))
    details["distinct_count"] = len(distinct)

    # 1) distinct_forms_min
    min_n = int(minima.get("distinct_forms_min") or 0)
    if min_n > 0:
        if len(distinct) < min_n:
            ok = False
            messages.append(
                f"distinct forms {len(distinct)} < distinct_forms_min {min_n}: "
                + (", ".join(distinct) if distinct else "(none)")
            )
        else:
            messages.append(f"distinct forms {len(distinct)} ≥ min {min_n}")

    # 2) early gatekeeper
    gatekeepers = list(minima.get("early_gatekeeper_forms") or [])
    early_window = minima.get("early_window") or {}
    if isinstance(early_window, dict):
        n = int(early_window.get("n") or 3)
    else:
        n = 3
    if gatekeepers:
        window = forms_ordered[:n] if n > 0 else forms_ordered
        # also consider distinct-in-order for first n catalog forms
        first_n: list[str] = []
        for fid in forms_ordered:
            if fid not in first_n:
                first_n.append(fid)
            if len(first_n) >= n:
                break
        details["early_window_forms"] = first_n
        hit = [g for g in gatekeepers if g in first_n]
        if not hit:
            ok = False
            messages.append(
                f"early gatekeeper: none of {gatekeepers} in first {n} catalog form(s) "
                f"{first_n}"
            )
        else:
            messages.append(f"early gatekeeper ok: {hit} in first {n} form(s)")

    # 3) forbidden sole forms / forbid_only_table_body
    forbidden_sole = set(minima.get("forbidden_sole_forms") or [])
    forbid_table = bool(minima.get("forbid_only_table_body"))
    if forbid_table:
        forbidden_sole.add("styled-table")
    if forbidden_sole and distinct:
        if set(distinct).issubset(forbidden_sole):
            ok = False
            messages.append(
                f"body is only forbidden sole form(s) {sorted(set(distinct))} "
                f"(forbidden_sole_forms / forbid_only_table_body)"
            )
        else:
            messages.append("forbidden_sole_forms: ok (not sole)")

    if ok and not messages:
        messages.append("genre minima: ok")

    return MinimaResult(ok=ok, skipped=False, messages=messages, details=details)

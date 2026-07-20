"""Load form-catalog core (forms.yaml) into stable / planned id sets."""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any


@dataclass(frozen=True)
class FormEntry:
    id: str
    status: str
    api: str | None = None
    package: str | None = None
    purpose: str | None = None

    @property
    def function_name(self) -> str:
        """Typst function name used in compose (from api or id)."""
        if self.api and self.api != "TBD" and not self.api.upper().startswith("TBD"):
            # bookkit.chapter-opener → chapter-opener
            if "." in self.api:
                return self.api.rsplit(".", 1)[-1].strip()
            return self.api.strip()
        return self.id


@dataclass
class Catalog:
    version: str
    forms: list[FormEntry] = field(default_factory=list)
    source: str = ""

    @property
    def by_id(self) -> dict[str, FormEntry]:
        return {f.id: f for f in self.forms}

    @property
    def by_function(self) -> dict[str, FormEntry]:
        out: dict[str, FormEntry] = {}
        for f in self.forms:
            out[f.function_name] = f
            out[f.id] = f
        return out

    @property
    def stable_ids(self) -> set[str]:
        return {f.id for f in self.forms if f.status == "stable"}

    @property
    def planned_ids(self) -> set[str]:
        return {f.id for f in self.forms if f.status == "planned"}

    @property
    def deprecated_ids(self) -> set[str]:
        return {f.id for f in self.forms if f.status == "deprecated"}

    @property
    def stable_function_names(self) -> set[str]:
        return {f.function_name for f in self.forms if f.status == "stable"}

    @property
    def all_function_names(self) -> set[str]:
        return {f.function_name for f in self.forms} | {f.id for f in self.forms}


def _parse_with_yaml(text: str) -> dict[str, Any]:
    import yaml  # type: ignore

    data = yaml.safe_load(text)
    if not isinstance(data, dict):
        raise ValueError("forms.yaml root must be a mapping")
    return data


def _parse_minimal(text: str) -> dict[str, Any]:
    """Best-effort parser for forms.yaml shape (stdlib fallback)."""
    version_m = re.search(r'(?m)^version:\s*["\']?([^"\'\n]+)', text)
    if not version_m:
        raise ValueError("missing version: field")
    version = version_m.group(1).strip()

    forms: list[dict[str, str]] = []
    current: dict[str, str] | None = None
    in_forms = False
    for line in text.splitlines():
        if re.match(r"^forms:\s*$", line):
            in_forms = True
            continue
        if not in_forms:
            continue
        if re.match(r"^[a-zA-Z_]", line) and not line.startswith(" "):
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


def load_raw(path: Path | str) -> dict[str, Any]:
    text = Path(path).read_text(encoding="utf-8")
    try:
        return _parse_with_yaml(text)
    except Exception:
        return _parse_minimal(text)


def load_catalog(path: Path | str) -> Catalog:
    """Load catalog YAML; require version; return Catalog."""
    p = Path(path)
    if not p.is_file():
        raise FileNotFoundError(f"catalog not found: {p}")
    data = load_raw(p)
    version = str(data.get("version") or "").strip()
    if not version:
        raise ValueError(f"catalog missing version: field ({p})")

    forms_raw = data.get("forms") or []
    if not isinstance(forms_raw, list):
        raise ValueError("forms: must be a list")

    forms: list[FormEntry] = []
    for i, item in enumerate(forms_raw):
        if not isinstance(item, dict):
            raise ValueError(f"forms[{i}]: not a mapping")
        fid = str(item.get("id") or "").strip()
        status = str(item.get("status") or "").strip()
        if not fid or not status:
            raise ValueError(f"forms[{i}]: id and status required")
        forms.append(
            FormEntry(
                id=fid,
                status=status,
                api=(str(item["api"]) if item.get("api") is not None else None),
                package=(str(item["package"]) if item.get("package") is not None else None),
                purpose=(str(item["purpose"]) if item.get("purpose") is not None else None),
            )
        )

    return Catalog(version=version, forms=forms, source=str(p))


def merge_overlay(base: Catalog, overlay_path: Path | str | None) -> Catalog:
    """Optional domain overlay: additional forms by id (overlay wins on conflict)."""
    if not overlay_path:
        return base
    over = load_catalog(overlay_path)
    by_id = base.by_id.copy()
    for f in over.forms:
        by_id[f.id] = f
    return Catalog(
        version=base.version,
        forms=list(by_id.values()),
        source=f"{base.source}+{over.source}",
    )

"""Post-hoc intent: list catalog forms found in .typ (audit / regen hints)."""

from __future__ import annotations

import json
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any


@dataclass
class PostHocResult:
    forms_ordered: list[str] = field(default_factory=list)
    forms_counts: dict[str, int] = field(default_factory=dict)
    messages: list[str] = field(default_factory=list)

    def as_dict(self) -> dict[str, Any]:
        return {
            "forms_ordered": list(self.forms_ordered),
            "forms_counts": dict(self.forms_counts),
            "distinct": len(self.forms_ordered),
        }

    def as_markdown(self) -> str:
        lines = [
            "# Post-hoc intent (forms found in .typ)",
            "",
            f"- **distinct:** {len(self.forms_ordered)}",
            "- **ordered (first occurrence):**",
        ]
        if not self.forms_ordered:
            lines.append("  - _(none)_")
        else:
            for i, fid in enumerate(self.forms_ordered, 1):
                n = self.forms_counts.get(fid, 1)
                lines.append(f"  {i}. `{fid}` (×{n})")
        return "\n".join(lines) + "\n"

    def as_json(self, indent: int = 2) -> str:
        return json.dumps(self.as_dict(), indent=indent, ensure_ascii=False) + "\n"


def build_posthoc(forms_found: list[str], forms_ordered: list[str] | None = None) -> PostHocResult:
    ordered = list(forms_ordered) if forms_ordered is not None else list(dict.fromkeys(forms_found))
    counts: dict[str, int] = {}
    for fid in forms_found:
        counts[fid] = counts.get(fid, 0) + 1
    # ensure ordered entries appear in counts
    for fid in ordered:
        counts.setdefault(fid, 0)
    msg = (
        "post-hoc intent: "
        + (", ".join(ordered) if ordered else "(no catalog forms)")
    )
    return PostHocResult(forms_ordered=ordered, forms_counts=counts, messages=[msg])


def write_posthoc(
    result: PostHocResult,
    path: Path | str | None,
    *,
    fmt: str = "json",
) -> str | None:
    """Write post-hoc artifact; return path written or None."""
    if path is None:
        return None
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    if fmt == "md" or p.suffix.lower() in {".md", ".markdown"}:
        p.write_text(result.as_markdown(), encoding="utf-8")
    else:
        p.write_text(result.as_json(), encoding="utf-8")
    return str(p)

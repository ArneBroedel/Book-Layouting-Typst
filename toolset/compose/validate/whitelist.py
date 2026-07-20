"""Extract form-like invocations from .typ and check against catalog.

Default mode is **creative** (advisory inventory): planned/unknown form-like
calls warn but do not fail. Optional **strict** mode restores the old
stable∪BASIS hard fail for legacy audits.

See toolset/compose/CREATIVE-COMPOSE.md.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from typing import Literal

from .catalog import Catalog

# Typst call: #name( … ) or #name[ … ]  (also after whitespace without re-#)
_CALL_RE = re.compile(r"(?<![\w-])#([a-zA-Z_][\w-]*)\s*[(\[]")

# Strip line comments // … and block comments /* … */
_LINE_COMMENT = re.compile(r"//[^\n]*")
_BLOCK_COMMENT = re.compile(r"/\*.*?\*/", re.DOTALL)

WhitelistMode = Literal["creative", "strict"]

# Common Typst / package constructs (not catalog form ids).
# Under creative mode these are free. Under strict mode they are also free —
# the old "BASIS" list was never a hard exclusive surface for bare identifiers.
BASIS_NAMES: frozenset[str] = frozenset(
    {
        # imports / meta
        "import",
        "include",
        "let",
        "set",
        "show",
        "if",
        "else",
        "for",
        "while",
        "return",
        "context",
        # structure / text
        "heading",
        "par",
        "text",
        "emph",
        "strong",
        "underline",
        "strike",
        "smallcaps",
        "sub",
        "super",
        "highlight",
        "raw",
        "list",
        "enum",
        "item",
        "terms",
        "link",
        "ref",
        "label",
        "cite",
        "bibliography",
        "footnote",
        "quote",
        "linebreak",
        "pagebreak",
        "colbreak",
        "metadata",
        # layout primitives
        "page",
        "block",
        "box",
        "grid",
        "stack",
        "table",
        "figure",
        "image",
        "place",
        "move",
        "scale",
        "rotate",
        "hide",
        "pad",
        "align",
        "center",
        "horizon",
        "rect",
        "square",
        "circle",
        "ellipse",
        "line",
        "path",
        "polygon",
        "curve",
        "v",
        "h",
        "vspace",
        "hspace",
        "col",
        "row",
        "cell",
        "hline",
        "vline",
        # values / utils
        "str",
        "int",
        "float",
        "bool",
        "auto",
        "none",
        "type",
        "repr",
        "assert",
        "panic",
        "eval",
        "luma",
        "rgb",
        "cmyk",
        "color",
        "oklab",
        "gradient",
        "pattern",
        "stroke",
        "fill",
        "counter",
        "state",
        "locate",
        "query",
        "selector",
        "numbering",
        "sym",
        "math",
        "calc",
        "array",
        "dictionary",
        "bytes",
        "regex",
        "datetime",
        "duration",
        "version",
        "plugin",
        "json",
        "yaml",
        "csv",
        "xml",
        "toml",
        "read",
        "write",
        # package setup (not catalog forms)
        "setup-pages",
        "setup-typography",
        "setup-figure-numbering",
        "margin-setup",
        "print-mode",
        "print-page-args",
        "print-foreground",
        "crop-marks",
        "page-bleed",
        "prepress-bleed",
        "genre-presets",
    }
)


@dataclass
class WhitelistResult:
    ok: bool
    mode: str = "creative"
    forms_found: list[str] = field(default_factory=list)  # catalog form ids, document order
    forms_ordered: list[str] = field(default_factory=list)  # same, first occurrence order
    unknown: list[str] = field(default_factory=list)
    planned_used: list[str] = field(default_factory=list)
    deprecated_used: list[str] = field(default_factory=list)
    messages: list[str] = field(default_factory=list)
    advisory: bool = True  # True when non-stable use only warns


def strip_comments(source: str) -> str:
    source = _BLOCK_COMMENT.sub("", source)
    source = _LINE_COMMENT.sub("", source)
    return source


def extract_calls(source: str) -> list[str]:
    """Return function names invoked with #name( or #name[ in document order."""
    cleaned = strip_comments(source)
    return [m.group(1) for m in _CALL_RE.finditer(cleaned)]


def check_whitelist(
    source: str,
    catalog: Catalog,
    *,
    mode: WhitelistMode = "creative",
) -> WhitelistResult:
    """
    Inventory catalog forms used in the chapter.

    - **creative** (default): planned / unknown / deprecated → messages + ok=True
      (advisory). Creativity is the default; catalog is a preferred library.
    - **strict**: planned / unknown / deprecated → ok=False (legacy audit).
    """
    if mode not in ("creative", "strict"):
        mode = "creative"

    calls = extract_calls(source)
    by_fn = catalog.by_function

    forms_found: list[str] = []
    seen: set[str] = set()
    unknown: list[str] = []
    planned_used: list[str] = []
    deprecated_used: list[str] = []
    unknown_seen: set[str] = set()

    for name in calls:
        if name in BASIS_NAMES:
            continue

        entry = by_fn.get(name)
        if entry is not None:
            fid = entry.id
            if entry.status == "stable":
                forms_found.append(fid)
                seen.add(fid)
            elif entry.status == "planned":
                if fid not in planned_used:
                    planned_used.append(fid)
                # also track for post-hoc / minima soft awareness
                forms_found.append(fid)
                seen.add(fid)
            elif entry.status == "deprecated":
                if fid not in deprecated_used:
                    deprecated_used.append(fid)
            else:
                if name not in unknown_seen:
                    unknown.append(name)
                    unknown_seen.add(name)
            continue

        # Not in catalog: hyphenated names look like form-like APIs
        if "-" in name:
            if name not in unknown_seen:
                unknown.append(name)
                unknown_seen.add(name)
            continue

        # bare identifiers not in catalog/basis: ignore (local helpers, builtins)
        continue

    ordered = list(dict.fromkeys(forms_found))  # first-occurrence order
    messages: list[str] = []

    if mode == "creative":
        messages.append(
            "mode=creative (default): catalog is advisory preferred library; "
            "non-stable / custom form-like calls do not fail"
        )
    else:
        messages.append("mode=strict: planned/unknown/deprecated form-like calls fail")

    if planned_used:
        tag = "advisory" if mode == "creative" else "not production-legal under strict"
        messages.append(
            f"planned forms used ({tag}): " + ", ".join(planned_used)
        )
    if deprecated_used:
        messages.append("deprecated forms used: " + ", ".join(deprecated_used))
    if unknown:
        tag = "advisory — custom/uncatalogued OK when ideal needs it" if mode == "creative" else "fail under strict"
        messages.append(f"unknown form-like calls ({tag}): " + ", ".join(unknown))

    has_issues = bool(planned_used or deprecated_used or unknown)
    if mode == "strict":
        ok = not has_issues
        advisory = False
    else:
        ok = True  # creative never fails on catalog inventory alone
        advisory = has_issues

    if ordered:
        messages.append(
            f"catalog forms seen ({len(ordered)}): " + ", ".join(ordered)
        )
    else:
        messages.append("no catalog form ids detected (custom layout may still be valid)")

    if mode == "creative" and not has_issues:
        messages.append("all detected catalog forms are stable (preferred library match)")

    return WhitelistResult(
        ok=ok,
        mode=mode,
        forms_found=forms_found,
        forms_ordered=ordered,
        unknown=unknown,
        planned_used=planned_used,
        deprecated_used=deprecated_used,
        messages=messages,
        advisory=advisory,
    )

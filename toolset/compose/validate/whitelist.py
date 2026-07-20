"""Extract form-like invocations from .typ and check ⊆ stable ∪ basis."""

from __future__ import annotations

import re
from dataclasses import dataclass, field

from .catalog import Catalog

# Typst call: #name( … ) or #name[ … ]  (also after whitespace without re-#)
_CALL_RE = re.compile(r"(?<![\w-])#([a-zA-Z_][\w-]*)\s*[(\[]")

# Strip line comments // … and block comments /* … */
_LINE_COMMENT = re.compile(r"//[^\n]*")
_BLOCK_COMMENT = re.compile(r"/\*.*?\*/", re.DOTALL)

# Allowed non-catalog constructs (BASIS.md + common Typst + package setup).
# Keep pragmatic: production may use these freely.
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
        # layout primitives (basis allows limited use; chrome forms preferred)
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
    forms_found: list[str] = field(default_factory=list)  # catalog form ids, document order
    forms_ordered: list[str] = field(default_factory=list)  # same, first occurrence order
    unknown: list[str] = field(default_factory=list)
    planned_used: list[str] = field(default_factory=list)
    deprecated_used: list[str] = field(default_factory=list)
    messages: list[str] = field(default_factory=list)


def strip_comments(source: str) -> str:
    source = _BLOCK_COMMENT.sub("", source)
    source = _LINE_COMMENT.sub("", source)
    return source


def extract_calls(source: str) -> list[str]:
    """Return function names invoked with #name( or #name[ in document order."""
    cleaned = strip_comments(source)
    return [m.group(1) for m in _CALL_RE.finditer(cleaned)]


def check_whitelist(source: str, catalog: Catalog) -> WhitelistResult:
    """
    Forms ⊆ stable catalog; planned/deprecated/unknown form-like → fail.

    Pragmatic: catalog function names are the production surface. Hyphenated
    names not in stable∪basis are treated as unknown bookkit-like calls.
    """
    calls = extract_calls(source)
    by_fn = catalog.by_function
    stable_fns = catalog.stable_function_names | catalog.stable_ids
    planned_fns = {f.function_name for f in catalog.forms if f.status == "planned"} | catalog.planned_ids
    deprecated_fns = {
        f.function_name for f in catalog.forms if f.status == "deprecated"
    } | catalog.deprecated_ids

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
            elif entry.status == "deprecated":
                if fid not in deprecated_used:
                    deprecated_used.append(fid)
            else:
                # unknown status — treat as fail
                if name not in unknown_seen:
                    unknown.append(name)
                    unknown_seen.add(name)
            continue

        # Not in catalog: hyphenated names look like bookkit form APIs
        if "-" in name:
            if name not in unknown_seen:
                unknown.append(name)
                unknown_seen.add(name)
            continue

        # bare identifiers not in catalog/basis: ignore (local helpers, builtins)
        continue

    ordered = list(dict.fromkeys(forms_found))  # first-occurrence order
    messages: list[str] = []
    if planned_used:
        messages.append(
            "planned (not production-legal) forms used: " + ", ".join(planned_used)
        )
    if deprecated_used:
        messages.append("deprecated forms used: " + ", ".join(deprecated_used))
    if unknown:
        messages.append("unknown form-like calls: " + ", ".join(unknown))

    ok = not planned_used and not deprecated_used and not unknown
    if ok:
        messages.append(
            f"whitelist ok — {len(ordered)} distinct stable form(s): "
            + (", ".join(ordered) if ordered else "(none)")
        )

    return WhitelistResult(
        ok=ok,
        forms_found=forms_found,
        forms_ordered=ordered,
        unknown=unknown,
        planned_used=planned_used,
        deprecated_used=deprecated_used,
        messages=messages,
    )

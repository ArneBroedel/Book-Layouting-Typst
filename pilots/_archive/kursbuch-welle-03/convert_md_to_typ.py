#!/usr/bin/env python3
"""Convert Kursbuch pilot Markdown chapters to Typst modules using bookkit APIs.

Does not rewrite clinical claims — structure/layout only.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

SRC_DIR = Path(
    "/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10"
)
OUT_DIR = Path(__file__).resolve().parent / "chapters"

CHAPTERS = [
    ("chapter-ii1-drei-achsen-drisc.md", "ii1", "II-1", "Drei Achsen D-RISC"),
    ("chapter-i4-ifsg-meldepflicht-behandlungsverbote.md", "i4", "I-4", "IfSG Meldepflicht"),
    ("chapter-iii2-bls-aed-notfallprozeduren.md", "iii2", "III-2", "BLS / AED"),
    ("chapter-iii5-cauda-notfallkarte.md", "iii5", "III-5", "Cauda Notfallkarte"),
    ("chapter-v-cauda-equina.md", "v-cauda", "V-Cauda", "Cauda equina"),
    ("chapter-iv2-rueckenschmerz-neuro.md", "iv2", "IV-2", "Rückenschmerz / Neuro"),
    ("chapter-iv4-heisses-gelenk.md", "iv4", "IV-4", "Heißes Gelenk"),
    ("chapter-v-bakterielle-arthritis-kurz.md", "v-sept", "V-Sept", "Bakterielle Arthritis"),
    ("chapter-vi1-geriatrie.md", "vi1", "VI-1", "Geriatrie"),
    ("chapter-vii1-exam-cluster-integration.md", "vii1", "VII-1", "Exam-Cluster Integration"),
]


def strip_meta(md: str) -> str:
    md = re.sub(r"<!--.*?-->", "", md, flags=re.S)
    return md.strip()


def escape_typst_text(s: str) -> str:
    """Escape Typst special chars in plain text segments."""
    # Order matters
    s = s.replace("\\", "\\\\")
    s = s.replace("#", "\\#")
    s = s.replace("$", "\\$")
    s = s.replace("<", "\\<")
    s = s.replace(">", "\\>")
    s = s.replace("@", "\\@")
    return s


def inline_md(s: str) -> str:
    """Convert a subset of MD inline markup to Typst markup."""
    # code spans first
    parts: list[str] = []
    i = 0
    while i < len(s):
        if s[i] == "`":
            j = s.find("`", i + 1)
            if j != -1:
                code = s[i + 1 : j]
                parts.append(f"`{code}`")
                i = j + 1
                continue
        # bold ** **
        if s.startswith("**", i):
            j = s.find("**", i + 2)
            if j != -1:
                inner = escape_typst_text(s[i + 2 : j])
                parts.append(f"*{inner}*")
                i = j + 2
                continue
        # italic _ _ (avoid __)
        if s[i] == "_" and not s.startswith("__", i):
            j = s.find("_", i + 1)
            if j != -1 and "\n" not in s[i:j]:
                inner = escape_typst_text(s[i + 1 : j])
                parts.append(f"_{inner}_")
                i = j + 1
                continue
        # single char
        ch = s[i]
        if ch in "\\#$<>@":
            parts.append("\\" + ch)
        else:
            parts.append(ch)
        i += 1
    return "".join(parts)


def parse_table(lines: list[str], start: int) -> tuple[str, int]:
    rows = []
    i = start
    while i < len(lines) and lines[i].strip().startswith("|"):
        row = lines[i].strip()
        if re.match(r"^\|[\s\-:|]+\|$", row):
            i += 1
            continue
        cells = [c.strip() for c in row.strip("|").split("|")]
        rows.append(cells)
        i += 1
    if not rows:
        return "", start + 1
    # normalize col count
    ncol = max(len(r) for r in rows)
    for r in rows:
        while len(r) < ncol:
            r.append("")
    header = rows[0]
    body = rows[1:]
    cols = ", ".join(["1fr"] * ncol)
    out = [f"#styled-table(\n  columns: ({cols}),"]
    out.append("  table.header(")
    for h in header:
        out.append(f"    text(fill: white, weight: \"bold\", size: 8.5pt)[{inline_md(h)}],")
    out.append("  ),")
    for r in body:
        for c in r:
            out.append(f"  [{inline_md(c)}],")
    out.append(")")
    return "\n".join(out), i


def convert_body(md: str) -> str:
    lines = md.splitlines()
    out: list[str] = []
    i = 0
    # skip leading H1 (handled by chapter-opener)
    while i < len(lines) and not lines[i].startswith("# "):
        i += 1
    if i < len(lines) and lines[i].startswith("# "):
        i += 1

    para: list[str] = []

    def flush_para():
        nonlocal para
        if not para:
            return
        text = " ".join(p.strip() for p in para if p.strip())
        para = []
        if not text:
            return
        # Heuristic didactic wrappers
        low = text.lower()
        if any(
            k in low
            for k in (
                "112 / ed",
                "absolute pt-kontraindikation",
                "absolute kontraindikation",
                "cave:",
                "red flag",
                "kontraindikation für",
            )
        ) and len(text) < 600:
            out.append(f"#cave[{inline_md(text)}]")
            out.append("")
            return
        if text.startswith("Gatekeeper") or text.startswith("**Gatekeeper"):
            out.append(f"#memo[{inline_md(text)}]")
            out.append("")
            return
        out.append(inline_md(text))
        out.append("")

    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        if not stripped:
            flush_para()
            i += 1
            continue

        if stripped.startswith("|"):
            flush_para()
            tbl, ni = parse_table(lines, i)
            if tbl:
                out.append(tbl)
                out.append("")
            i = ni
            continue

        if stripped.startswith("```"):
            flush_para()
            i += 1
            code = []
            while i < len(lines) and not lines[i].strip().startswith("```"):
                code.append(lines[i])
                i += 1
            if i < len(lines):
                i += 1
            out.append("#code-block[")
            out.append("```")
            out.extend(code)
            out.append("```")
            out.append("]")
            out.append("")
            continue

        if stripped.startswith("> "):
            flush_para()
            quote = [stripped[2:]]
            i += 1
            while i < len(lines) and lines[i].startswith("> "):
                quote.append(lines[i][2:])
                i += 1
            q = " ".join(quote)
            out.append(f"#callout(title: [Hinweis], tone: \"warning\")[{inline_md(q)}]")
            out.append("")
            continue

        if stripped.startswith("---") and set(stripped) <= {"-"}:
            flush_para()
            out.append("#section-break()")
            out.append("")
            i += 1
            continue

        m = re.match(r"^(#{2,4})\s+(.*)$", stripped)
        if m:
            flush_para()
            level = len(m.group(1))
            # Drop leading manual section numbers — Typst numbering provides them
            raw_title = re.sub(r"^\d+(\.\d+)*\.?\s+", "", m.group(2)).strip()
            title = inline_md(raw_title)
            out.append(f"{'=' * level} {title}")
            out.append("")
            i += 1
            continue

        if re.match(r"^[-*]\s+", stripped):
            flush_para()
            while i < len(lines) and re.match(r"^[-*]\s+", lines[i].strip()):
                item = re.sub(r"^[-*]\s+", "", lines[i].strip())
                out.append(f"- {inline_md(item)}")
                i += 1
            out.append("")
            continue

        if re.match(r"^\d+\.\s+", stripped):
            flush_para()
            while i < len(lines) and re.match(r"^\d+\.\s+", lines[i].strip()):
                item = re.sub(r"^\d+\.\s+", "", lines[i].strip())
                out.append(f"+ {inline_md(item)}")
                i += 1
            out.append("")
            continue

        para.append(stripped)
        i += 1

    flush_para()
    return "\n".join(out)


def chapter_module(path: Path, slug: str, chap_id: str, short_title: str) -> tuple[str, str]:
    md = strip_meta(path.read_text(encoding="utf-8"))
    # title from first H1
    m = re.search(r"^#\s+(.+)$", md, re.M)
    title = m.group(1).strip() if m else short_title
    body = convert_body(md)
    typ = f"""// Auto-generated from {path.name} — layout only; clinical text not rewritten.
// Source: Kursbuch pilot 2026-07-welle-03-final-10
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#chapter-opener(
  title: [{escape_typst_text(title)}],
  lead: [Kursbuch-Pilot {chap_id} · Layout via bookkit + bookkit-didactics],
)

#tag[{chap_id}] #badge[pilot]

{body}
"""
    return title, typ


def main() -> int:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    titles = []
    for fname, slug, chap_id, short in CHAPTERS:
        src = SRC_DIR / fname
        if not src.exists():
            print(f"MISSING {src}", file=sys.stderr)
            return 1
        title, typ = chapter_module(src, slug, chap_id, short)
        out = OUT_DIR / f"{slug}.typ"
        out.write_text(typ, encoding="utf-8")
        titles.append((slug, chap_id, title, fname))
        print(f"wrote {out} ({len(typ)} bytes)")

    # inventory
    inv = OUT_DIR.parent / "CHAPTER-MAP.md"
    lines = ["# Chapter → PDF map\n", "| slug | id | title | source |\n|---|---|---|---|\n"]
    for slug, chap_id, title, fname in titles:
        lines.append(f"| {slug} | {chap_id} | {title} | {fname} |\n")
    inv.write_text("".join(lines), encoding="utf-8")
    print(f"wrote {inv}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

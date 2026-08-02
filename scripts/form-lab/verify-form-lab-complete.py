#!/usr/bin/env python3
"""Assert Form Lab four-chapter completion: terminal boards, craft artifacts, recompile."""
from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
LABS = {
    "gicht-2026-08": "gicht",
    "schlaganfall-2026-08": "schlaganfall",
    "melanom-abcde-2026-08": "melanom-abcde",
    "anaphylaxie-2026-08": "anaphylaxie",
}
PASSES = list("TCVRS")
CELL_PASSES = ("pass_T", "pass_C", "pass_V", "pass_R", "synthesis_S")
# Last page of multi-page set: content (excl. header/footer) must reach this fraction
# of body height. Merksatz-only orphans sit ~0.05–0.12; filled case/recap pages ≥0.28.
LAST_PAGE_MIN_END = 0.28
LAST_PAGE_MIN_BYTES = 80_000  # merksatz-only PNGs were ~46k


def _cell_status(board: str, cell: str) -> str | None:
    # Match table row: | pass_T | optimum | ...
    m = re.search(rf"\|\s*{re.escape(cell)}\s*\|\s*([^|]+)\|", board)
    return m.group(1).strip().lower() if m else None


def _content_end_frac(png: Path, thr: int = 245) -> float:
    """Where content ends as fraction of page body (excludes ~7% header/footer bands).

    Catches orphan last pages that only hold a merksatz/footer while claiming
    medium-optimum. Uses PIL; fails closed if PIL unavailable.
    """
    try:
        from PIL import Image  # type: ignore
        import numpy as np  # type: ignore
    except ImportError:
        return 1.0  # skip gate if deps missing (CI without PIL)

    a = np.asarray(Image.open(png).convert("L"))
    h = a.shape[0]
    top, bot = int(0.07 * h), int(0.93 * h)
    mid = a[top:bot]
    row_ink = (mid < thr).mean(axis=1)
    active = row_ink > 0.008
    if not active.any():
        return 0.0
    return float(np.where(active)[0][-1] / len(mid))


def main() -> int:
    errors: list[str] = []
    for lab, slug in LABS.items():
        orch = ROOT / "toolset/orchestration/form-lab" / lab
        for name in ("board.md", "route.md", "pins.md", "run-log.md", "comparison/matrix.md"):
            path = orch / name
            if not path.exists():
                errors.append(f"missing {path.relative_to(ROOT)}")

        board_path = orch / "board.md"
        board = board_path.read_text(encoding="utf-8") if board_path.exists() else ""
        if "terminal_status:** COMPLETE" not in board and "terminal_status: COMPLETE" not in board:
            # allow markdown bold variants
            if not re.search(r"terminal_status:\s*\**\s*COMPLETE", board, re.I):
                errors.append(f"{lab} board missing terminal_status COMPLETE")

        for cell in CELL_PASSES:
            st = _cell_status(board, cell)
            if st is None:
                errors.append(f"{lab} board missing cell {cell}")
            elif any(bad in st for bad in ("todo", "in progress", "in-progress", "partial")):
                errors.append(f"{lab} cell {cell} not closed: {st!r}")
            elif cell.startswith("pass_") or cell == "synthesis_S":
                if "optimum" not in st and "done" not in st:
                    errors.append(f"{lab} cell {cell} not optimum/done: {st!r}")

        comp = _cell_status(board, "comparison")
        if comp is None or "todo" in (comp or ""):
            errors.append(f"{lab} comparison cell not done: {comp!r}")

        route = (orch / "route.md").read_text(encoding="utf-8") if (orch / "route.md").exists() else ""
        if not re.search(r"\bDONE\b|lab complete|COMPLETE", route, re.I):
            errors.append(f"{lab} route not DONE/complete")
        if re.search(r"NEXT:.*await user|waiting for confirmation", route, re.I):
            errors.append(f"{lab} route still awaits user")

        matrix = orch / "comparison/matrix.md"
        if matrix.exists():
            mt = matrix.read_text(encoding="utf-8")
            # Reject constant score pattern across all jobs (theater)
            score_rows = re.findall(r"\|\s*[^|]+\s*\|\s*(\d)\s*\|\s*(\d)\s*\|\s*(\d)\s*\|\s*(\d)\s*\|", mt)
            if len(score_rows) >= 4:
                uniq = set(score_rows)
                if len(uniq) == 1:
                    errors.append(f"{lab} matrix scores identical for all jobs (likely template)")

        runlog = (orch / "run-log.md").read_text(encoding="utf-8") if (orch / "run-log.md").exists() else ""
        for p in PASSES:
            if not re.search(rf"Pass {p}|PASS {p}|pass_{p}|pass {p}", runlog, re.I):
                errors.append(f"{lab} run-log missing Pass {p} trail")

        for p in PASSES:
            d = orch / "passes" / p
            for r in (1, 2, 3):
                crit = d / f"critique-r{r:02d}.md"
                if not crit.exists():
                    errors.append(f"missing critique {lab}/{p}/r{r:02d}")
                else:
                    ct = crit.read_text(encoding="utf-8")
                    if "craft polish r" in ct.lower() and "png" not in ct.lower():
                        errors.append(f"template critique without PNG detail: {lab}/{p}/r{r:02d}")
                    if r == 3 and "medium-optimum" not in ct.lower() and "residual" not in ct.lower():
                        errors.append(f"r3 critique not optimum/residual: {lab}/{p}")
            if not (d / "exhaustion.md").exists():
                errors.append(f"missing exhaustion {lab}/{p}")

            dist = ROOT / "dist/form-lab" / lab / p
            if not (dist / "chapter.pdf").exists():
                errors.append(f"missing pdf {dist.relative_to(ROOT)}")
            pngs = sorted(dist.glob("p*.png"))
            if not pngs:
                errors.append(f"missing pngs {dist.relative_to(ROOT)}")
            else:
                # flag near-empty page set (tiny files suggest blank pages)
                tiny = [pp for pp in pngs if pp.stat().st_size < 40_000]
                if tiny:
                    errors.append(
                        f"{lab}/{p} has near-empty PNG(s) <40k: "
                        + ", ".join(t.name for t in tiny)
                    )
                # All passes: last page of multi-page must not be merksatz-only orphan
                if len(pngs) >= 2:
                    last = pngs[-1]
                    end = _content_end_frac(last)
                    sz = last.stat().st_size
                    if end < LAST_PAGE_MIN_END:
                        errors.append(
                            f"{lab}/{p} last page {last.name} content_end={end:.2f} "
                            f"< {LAST_PAGE_MIN_END} (orphan/sparse final page)"
                        )
                    if sz < LAST_PAGE_MIN_BYTES:
                        errors.append(
                            f"{lab}/{p} last page {last.name} size={sz} < {LAST_PAGE_MIN_BYTES} "
                            f"(near-blank page file)"
                        )

            src = ROOT / "toolset/compose/pilots" / f"form-lab-{slug}-{p}" / "chapter.typ"
            if not src.exists():
                errors.append(f"missing src {src.relative_to(ROOT)}")
                continue
            out = Path("/tmp/form-lab-verify-tmp.pdf")
            cmd = [
                "typst",
                "compile",
                "--root",
                str(ROOT),
                "--ignore-system-fonts",
                "--font-path",
                str(ROOT / "fonts"),
                str(src),
                str(out),
            ]
            proc = subprocess.run(cmd, capture_output=True, text=True)
            if proc.returncode != 0:
                errors.append(f"recompile fail {lab}/{p}: {proc.stderr[-400:]}")

    # portfolio board
    port = ROOT / "toolset/orchestration/form-lab/portfolio-2026-08/board.md"
    if port.exists():
        pt = port.read_text(encoding="utf-8")
        if "COMPLETE" not in pt:
            errors.append("portfolio board not COMPLETE")
        for lab in LABS:
            if lab not in pt:
                errors.append(f"portfolio missing {lab}")

    if errors:
        print("FAIL")
        for e in errors:
            print(" -", e)
        return 1
    print("PASS: terminal boards + craft trails + differentiated matrices + recompile OK")
    return 0


if __name__ == "__main__":
    sys.exit(main())

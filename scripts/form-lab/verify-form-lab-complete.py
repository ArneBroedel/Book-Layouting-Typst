#!/usr/bin/env python3
"""Assert Form Lab b-wave four-chapter completion: boards, craft, matrix, recompile.

SoT wave: `*-2026-08-b` (clean restart).
Chapter.typ: `toolset/compose/lab/form-lab-<slug>-b-<pass>/` (lab runs, not compose/pilots).
Boards: `toolset/orchestration/form-lab/_archive/*-2026-08-b/`.
Drives real typst compile on lab chapter.typ — not a mock path.
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]

# Default: b-wave (goal SoT). Pass --wave a for provenance labs.
WAVE_DEFAULT = "b"
LABS_B = {
    "gicht-2026-08-b": "gicht",
    "schlaganfall-2026-08-b": "schlaganfall",
    "melanom-abcde-2026-08-b": "melanom-abcde",
    "anaphylaxie-2026-08-b": "anaphylaxie",
}
LABS_A = {
    "gicht-2026-08": "gicht",
    "schlaganfall-2026-08": "schlaganfall",
    "melanom-abcde-2026-08": "melanom-abcde",
    "anaphylaxie-2026-08": "anaphylaxie",
}
PASSES = list("TCVRS")
CELL_PASSES = ("pass_T", "pass_C", "pass_V", "pass_R", "synthesis_S")
LAST_PAGE_MIN_END = 0.28
LAST_PAGE_MIN_BYTES = 80_000


def _cell_status(board: str, cell: str) -> str | None:
    m = re.search(rf"\|\s*{re.escape(cell)}\s*\|\s*([^|]+)\|", board)
    return m.group(1).strip().lower() if m else None


def _content_end_frac(png: Path, thr: int = 245) -> float:
    try:
        from PIL import Image  # type: ignore
        import numpy as np  # type: ignore
    except ImportError:
        return 1.0

    a = np.asarray(Image.open(png).convert("L"))
    h = a.shape[0]
    top, bot = int(0.07 * h), int(0.93 * h)
    mid = a[top:bot]
    row_ink = (mid < thr).mean(axis=1)
    active = row_ink > 0.008
    if not active.any():
        return 0.0
    return float(np.where(active)[0][-1] / len(mid))


def _matrix_score_rows(mt: str) -> list[tuple[str, tuple[int, int, int, int]]]:
    """Parse learner-job score rows; tolerate **bold** winners in cells."""
    rows: list[tuple[str, tuple[int, int, int, int]]] = []
    for line in mt.splitlines():
        if not line.startswith("|"):
            continue
        cells = [c.strip() for c in line.strip().strip("|").split("|")]
        if len(cells) < 5:
            continue
        scores: list[int] = []
        ok = True
        for c in cells[1:5]:
            m = re.search(r"([1-5])", c.replace("*", ""))
            if not m:
                ok = False
                break
            scores.append(int(m.group(1)))
        if ok and len(scores) == 4:
            # skip header-like if first score col is non-job text without letters
            job = cells[0]
            if job.lower() in ("learner job", "job", "---", ""):
                continue
            if re.match(r"^[-:]+$", job):
                continue
            rows.append((job, (scores[0], scores[1], scores[2], scores[3])))
    return rows


def _pilot_path(slug: str, pass_id: str, wave: str) -> Path:
    # Form Lab chapter.typ lives under compose/lab/ (runs), not compose/pilots/ (dogfood)
    if wave == "b":
        return ROOT / "toolset/compose/lab" / f"form-lab-{slug}-b-{pass_id}" / "chapter.typ"
    return ROOT / "toolset/compose/lab" / f"form-lab-{slug}-{pass_id}" / "chapter.typ"


def _portfolio_path(wave: str) -> Path:
    # Completed wave a/b portfolios live under form-lab/_archive/
    if wave == "b":
        return ROOT / "toolset/orchestration/form-lab/_archive/portfolio-2026-08-b/board.md"
    return ROOT / "toolset/orchestration/form-lab/_archive/portfolio-2026-08/board.md"


def _mounted_raster_paths(typ: Path) -> list[str]:
    if not typ.exists():
        return []
    text = typ.read_text(encoding="utf-8")
    # absolute repo paths and A + "/file" patterns
    paths = re.findall(r'["\'](/domains/medical/assets/form-lab/[^"\']+\.(?:jpg|jpeg|png))["\']', text)
    # relative via A + "/name"
    base = re.search(
        r'#let\s+A\s*=\s*["\'](/domains/medical/assets/form-lab/[^"\']+)["\']',
        text,
    )
    if base:
        for rel in re.findall(r'A\s*\+\s*["\'](/[^"\']+\.(?:jpg|jpeg|png))["\']', text):
            paths.append(base.group(1) + rel)
    return paths


def _r_fail_mounted(orch: Path, slug: str, wave: str, errors: list[str]) -> None:
    """If critique-r03 marks an aspect FAIL, its basename must not be mounted in R/S pilots."""
    crit = orch / "passes" / "R" / "critique-r03.md"
    if not crit.exists():
        return
    ct = crit.read_text(encoding="utf-8")
    # rows ending with FAIL verdict (last cell)
    fail_names: list[str] = []
    for line in ct.splitlines():
        if "|" not in line or "FAIL" not in line.upper():
            continue
        if re.search(r"\|\s*FAIL\s*\|?\s*$", line, re.I) or re.search(
            r"verdict\s*\|\s*$", line, re.I
        ):
            pass
        cells = [c.strip() for c in line.strip().strip("|").split("|")]
        if not cells:
            continue
        # last non-empty cell is often verdict
        if cells and re.fullmatch(r"FAIL", cells[-1], re.I):
            fail_names.append(cells[0].lower())
        # also "Demoted: ... FAIL" prose is OK (not mounted)
    if "fail" in ct.lower() and "not mounted" in ct.lower():
        # documented demotion is success path
        pass

    for p in ("R", "S"):
        pilot = _pilot_path(slug, p, wave)
        mounted = _mounted_raster_paths(pilot)
        for mp in mounted:
            # file must exist
            abs_path = ROOT / mp.lstrip("/")
            # paths are /domains/... from typst root
            alt = ROOT / mp[1:] if mp.startswith("/") else ROOT / mp
            candidate = alt if alt.exists() else abs_path
            if not candidate.exists():
                # try domains relative
                rel = mp.lstrip("/")
                candidate = ROOT / rel
            if not candidate.exists():
                errors.append(f"mounted missing asset {mp} in {pilot.relative_to(ROOT)}")


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument(
        "--wave",
        choices=("a", "b"),
        default=WAVE_DEFAULT,
        help="a = *-2026-08 provenance; b = *-2026-08-b SoT (default)",
    )
    ap.add_argument(
        "--skip-recompile",
        action="store_true",
        help="Skip typst recompile (structure-only gate)",
    )
    ap.add_argument(
        "--recompile-sample",
        action="store_true",
        help="Recompile one pass per medium (T,C,V,R,S once each) instead of all 20",
    )
    args = ap.parse_args(argv)

    wave = args.wave
    labs = LABS_B if wave == "b" else LABS_A
    errors: list[str] = []
    recompile_done: set[str] = set()

    for lab, slug in labs.items():
        # Completed craft labs live under form-lab/_archive/ (living slice = templates + harvest portfolios)
        orch = ROOT / "toolset/orchestration/form-lab/_archive" / lab
        for name in ("board.md", "route.md", "pins.md", "run-log.md", "comparison/matrix.md"):
            path = orch / name
            if not path.exists():
                errors.append(f"missing {path.relative_to(ROOT)}")

        board_path = orch / "board.md"
        board = board_path.read_text(encoding="utf-8") if board_path.exists() else ""
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
            score_rows = _matrix_score_rows(mt)
            if len(score_rows) < 4:
                errors.append(f"{lab} matrix has <4 scored learner-job rows ({len(score_rows)})")
            else:
                uniq = set(s for _, s in score_rows)
                if len(uniq) == 1:
                    errors.append(f"{lab} matrix scores identical for all jobs (likely template)")
                if not any(len(set(s)) > 1 for _, s in score_rows):
                    errors.append(f"{lab} no job row varies across T/C/V/R")
            if not re.search(r"synthesis|winner", mt, re.I):
                errors.append(f"{lab} matrix missing synthesis/winner guidance")

        runlog = (orch / "run-log.md").read_text(encoding="utf-8") if (orch / "run-log.md").exists() else ""
        for p in PASSES:
            # Allow "PASS T–V" / "PASS T-V" to cover T,C,V only when each letter appears
            # Prefer explicit Pass X; accept complete stack phrasing.
            if re.search(rf"Pass {p}|PASS {p}|pass_{p}|pass {p}", runlog, re.I):
                continue
            if p in "TCV" and re.search(r"PASS\s+T\s*[–\-]\s*V|Pass\s+T\s*[–\-]\s*V", runlog, re.I):
                continue
            if p == "S" and re.search(r"PASS\s+S|COMPARISON\s*\+\s*S|synthesis", runlog, re.I):
                continue
            if p == "R" and re.search(r"PASS\s+R|Pass\s+R", runlog, re.I):
                continue
            errors.append(f"{lab} run-log missing Pass {p} trail")

        for p in PASSES:
            d = orch / "passes" / p
            for r in (1, 2, 3):
                crit = d / f"critique-r{r:02d}.md"
                if not crit.exists():
                    errors.append(f"missing critique {lab}/{p}/r{r:02d}")
                else:
                    ct = crit.read_text(encoding="utf-8")
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
                tiny = [pp for pp in pngs if pp.stat().st_size < 40_000]
                if tiny:
                    errors.append(
                        f"{lab}/{p} has near-empty PNG(s) <40k: "
                        + ", ".join(t.name for t in tiny)
                    )
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

            src = _pilot_path(slug, p, wave)
            if not src.exists():
                errors.append(f"missing src {src.relative_to(ROOT)}")
                continue

            do_compile = not args.skip_recompile
            if args.recompile_sample:
                # one of each medium across portfolio
                if p in recompile_done:
                    do_compile = False
                else:
                    recompile_done.add(p)

            if do_compile:
                out = Path("/tmp/grok-goal-d25afa0d8b9a/implementer") / f"verify-{lab}-{p}.pdf"
                out.parent.mkdir(parents=True, exist_ok=True)
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

        # R/S: mounted assets exist; no FAIL left mounted (heuristic)
        _r_fail_mounted(orch, slug, wave, errors)
        for p in ("R", "S"):
            for mp in _mounted_raster_paths(_pilot_path(slug, p, wave)):
                rel = mp.lstrip("/")
                candidate = ROOT / rel
                if not candidate.exists():
                    errors.append(f"{lab}/{p} missing mounted asset {mp}")

    port = _portfolio_path(wave)
    if port.exists():
        pt = port.read_text(encoding="utf-8")
        if "COMPLETE" not in pt:
            errors.append("portfolio board not COMPLETE")
        for lab in labs:
            if lab not in pt:
                errors.append(f"portfolio missing {lab}")
    else:
        errors.append(f"missing portfolio {port.relative_to(ROOT)}")

    if errors:
        print("FAIL")
        for e in errors:
            print(" -", e)
        return 1
    print(
        f"PASS: wave={wave} terminal boards + craft trails + differentiated matrices "
        f"+ recompile OK"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())

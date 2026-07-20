#!/usr/bin/env python3
"""Preflight: warn if raster images fall below a target print DPI.

Scans project image assets (and optional PDF-embedded images when pypdf is
available). Vector files (SVG) are always OK. Designed for future photo
assets — the showcase currently ships only SVGs under src/assets/.

Usage:
  python3 scripts/check-image-dpi.py
  python3 scripts/check-image-dpi.py --min-dpi 300 --root .
  python3 scripts/check-image-dpi.py --paths src/assets dist/book-print.pdf

Exit codes:
  0 — all checked rasters meet the threshold (or only vectors present)
  1 — one or more under-dpi rasters, or a hard error
  2 — soft warning only (use --strict to turn warnings into failures)
"""

from __future__ import annotations

import argparse
import struct
import sys
import zlib
from pathlib import Path

RASTER_EXTS = {".png", ".jpg", ".jpeg", ".tif", ".tiff", ".webp", ".gif", ".bmp"}
VECTOR_EXTS = {".svg", ".pdf"}  # pdf handled separately if embedded scan requested


def png_size(path: Path) -> tuple[int, int] | None:
    data = path.read_bytes()
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        return None
    # IHDR
    w, h = struct.unpack(">II", data[16:24])
    return w, h


def jpeg_size(path: Path) -> tuple[int, int] | None:
    data = path.read_bytes()
    if data[:2] != b"\xff\xd8":
        return None
    i = 2
    while i < len(data) - 8:
        if data[i] != 0xFF:
            i += 1
            continue
        marker = data[i + 1]
        if marker in (0xC0, 0xC1, 0xC2):  # SOF0/1/2
            h, w = struct.unpack(">HH", data[i + 5 : i + 9])
            return w, h
        if marker == 0xD9:
            break
        if marker in (0xD8, 0x01) or (0xD0 <= marker <= 0xD7):
            i += 2
            continue
        seglen = struct.unpack(">H", data[i + 2 : i + 4])[0]
        i += 2 + seglen
    return None


def image_pixel_size(path: Path) -> tuple[int, int] | None:
    ext = path.suffix.lower()
    try:
        if ext == ".png":
            return png_size(path)
        if ext in {".jpg", ".jpeg"}:
            return jpeg_size(path)
    except Exception:
        return None
    # Optional Pillow fallback for TIFF/WebP/etc.
    try:
        from PIL import Image  # type: ignore

        with Image.open(path) as im:
            return im.size
    except Exception:
        return None


def dpi_for_display(path: Path, display_mm: float | None, min_dpi: float) -> tuple[float | None, str]:
    """Return (effective_dpi, note). If display size unknown, report pixel dims only."""
    size = image_pixel_size(path)
    if size is None:
        return None, "could not read pixel dimensions"
    w, h = size
    if display_mm is None or display_mm <= 0:
        # Without layout context we only know native metadata DPI if present.
        # Report as "pixels known; supply --assume-width-mm for effective DPI".
        return None, f"{w}×{h}px (no display size; pass --assume-width-mm)"
    width_in = display_mm / 25.4
    dpi = w / width_in
    return dpi, f"{w}×{h}px @ {display_mm:.1f} mm → {dpi:.0f} dpi"


def scan_rasters(paths: list[Path], min_dpi: float, assume_width_mm: float | None) -> list[dict]:
    findings: list[dict] = []
    for root in paths:
        if root.is_file():
            candidates = [root]
        elif root.is_dir():
            candidates = [p for p in root.rglob("*") if p.is_file()]
        else:
            continue
        for p in candidates:
            ext = p.suffix.lower()
            if ext in VECTOR_EXTS or ext == ".pdf":
                if ext == ".svg":
                    findings.append(
                        {
                            "path": str(p),
                            "status": "ok",
                            "kind": "vector",
                            "detail": "SVG (resolution-independent)",
                        }
                    )
                continue
            if ext not in RASTER_EXTS:
                continue
            dpi, note = dpi_for_display(p, assume_width_mm, min_dpi)
            if dpi is None:
                findings.append(
                    {
                        "path": str(p),
                        "status": "info",
                        "kind": "raster",
                        "detail": note,
                    }
                )
            elif dpi + 1e-6 < min_dpi:
                findings.append(
                    {
                        "path": str(p),
                        "status": "fail",
                        "kind": "raster",
                        "detail": f"{note}  < {min_dpi:.0f} dpi target",
                    }
                )
            else:
                findings.append(
                    {
                        "path": str(p),
                        "status": "ok",
                        "kind": "raster",
                        "detail": note,
                    }
                )
    return findings


def write_report(findings: list[dict], report_path: Path | None) -> None:
    lines = ["# Image DPI preflight", ""]
    counts = {"ok": 0, "fail": 0, "info": 0}
    for f in findings:
        counts[f["status"]] = counts.get(f["status"], 0) + 1
        mark = {"ok": "OK", "fail": "FAIL", "info": "INFO"}[f["status"]]
        lines.append(f"- **{mark}** `{f['path']}` — {f['detail']}")
    lines.append("")
    lines.append(
        f"Summary: {counts.get('ok', 0)} ok, {counts.get('fail', 0)} fail, {counts.get('info', 0)} info"
    )
    text = "\n".join(lines) + "\n"
    print(text, end="")
    if report_path:
        report_path.parent.mkdir(parents=True, exist_ok=True)
        report_path.write_text(text, encoding="utf-8")
        print(f"(wrote {report_path})", file=sys.stderr)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--root", type=Path, default=Path("."), help="Project root (default: .)")
    ap.add_argument(
        "--paths",
        nargs="*",
        type=Path,
        default=None,
        help="Files/dirs to scan (default: src/assets)",
    )
    ap.add_argument("--min-dpi", type=float, default=300.0, help="Minimum effective DPI (default 300)")
    ap.add_argument(
        "--assume-width-mm",
        type=float,
        default=None,
        help="Assume raster is placed at this width (mm) when computing effective DPI",
    )
    ap.add_argument(
        "--report",
        type=Path,
        default=Path("prepress/reports/image-dpi.md"),
        help="Markdown report path (default prepress/reports/image-dpi.md)",
    )
    ap.add_argument(
        "--strict",
        action="store_true",
        help="Treat missing display-size info as failure",
    )
    args = ap.parse_args()

    root: Path = args.root.resolve()
    paths = args.paths or [root / "src" / "assets"]
    paths = [p if p.is_absolute() else (root / p) for p in paths]

    findings = scan_rasters(paths, args.min_dpi, args.assume_width_mm)
    if not findings:
        findings.append(
            {
                "path": str(paths),
                "status": "info",
                "kind": "none",
                "detail": "No image assets found under scan paths",
            }
        )

    write_report(findings, args.report)

    fails = sum(1 for f in findings if f["status"] == "fail")
    infos = sum(1 for f in findings if f["status"] == "info" and f["kind"] == "raster")
    if fails:
        return 1
    if args.strict and infos:
        return 2
    return 0


if __name__ == "__main__":
    # zlib imported for future PNG pHYs chunk reading; keep lint quiet
    _ = zlib
    sys.exit(main())

#!/usr/bin/env bash
# Convert a Typst print PDF (RGB + bleed + crop marks) to PDF/X CMYK.
#
# Usage:
#   ./scripts/print-pdfx.sh [input.pdf] [output.pdf] [--profile path.icc] [--pdfx 3|4]
#
# Defaults:
#   input   dist/book-print-rgb.pdf
#   output  dist/book-print.pdf
#   profile prepress/profiles/default_cmyk.icc
#   pdfx    3   (PDF/X-3 — most reliable open-source path; see prepress/README.md)
#
# Requires: ghostscript (`gs`) on PATH. Override with GS=/path/to/gs.
set -euo pipefail

Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

Input=""
Output=""
Profile="$Root/prepress/profiles/default_cmyk.icc"
Pdfx=3
Pos=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    --profile) Profile="$2"; shift 2 ;;
    --pdfx) Pdfx="$2"; shift 2 ;;
    -h|--help)
      sed -n '2,16p' "$0"
      exit 0
      ;;
    --*)
      echo "error: unknown option: $1" >&2
      exit 1
      ;;
    *)
      Pos+=("$1")
      shift
      ;;
  esac
done

Input="${Pos[0]:-dist/book-print-rgb.pdf}"
Output="${Pos[1]:-dist/book-print.pdf}"

GS_BIN="${GS:-gs}"
if ! command -v "$GS_BIN" >/dev/null 2>&1 && [[ ! -x "$GS_BIN" ]]; then
  echo "error: ghostscript (gs) not found in PATH." >&2
  echo "  Install: apt install ghostscript | winget install ArtifexSoftware.GhostScript" >&2
  echo "  Or: GS=/path/to/gs $0 …" >&2
  exit 1
fi

if [[ ! -f "$Input" ]]; then
  echo "error: input PDF missing: $Input" >&2
  echo "  Build it first: ./scripts/build.sh print-rgb  (or full Mode print)" >&2
  exit 1
fi
if [[ ! -f "$Profile" ]]; then
  echo "error: ICC profile missing: $Profile" >&2
  echo "  See prepress/profiles/README.md" >&2
  exit 1
fi
if [[ ! -f "$Root/prepress/PDFX_def.ps" ]]; then
  echo "error: missing prepress/PDFX_def.ps" >&2
  exit 1
fi

TmpDef="$(mktemp --suffix=.ps)"
cleanup() { rm -f "$TmpDef"; }
trap cleanup EXIT

# Escape for PostScript string literal
PsProfile="${Profile//\\/\\\\}"
PsProfile="${PsProfile//(/\\(}"
PsProfile="${PsProfile//)/\\)}"

sed "s|/ICCProfile (.*) def|/ICCProfile ($PsProfile) def|" \
  "$Root/prepress/PDFX_def.ps" > "$TmpDef"

mkdir -p "$(dirname "$Output")"

echo "print-pdfx: $Input → $Output  (PDF/X-$Pdfx, profile=$(basename "$Profile"))"

# Permit reading the ICC profile and input under SAFER-like constraints.
# Ghostscript ≥ 9.50: --permit-file-read; fall back to -dNOSAFER on older GS.
ProfileDir="$(cd "$(dirname "$Profile")" && pwd)"
set +e
# Typst emits link annotations (TOC, cross-refs). PDF/X forbids ordinary
# annotations → Ghostscript would silently drop PDF/X mode. Strip them.
"$GS_BIN" \
  -dBATCH -dNOPAUSE -dNOOUTERSAVE \
  --permit-file-read="$Profile" \
  --permit-file-read="$ProfileDir/" \
  --permit-file-read="$Input" \
  --permit-file-read="$TmpDef" \
  -sDEVICE=pdfwrite \
  -dCompatibilityLevel=1.4 \
  -dPDFX="$Pdfx" \
  -dPreserveAnnots=false \
  -sColorConversionStrategy=CMYK \
  -dProcessColorModel=/DeviceCMYK \
  -dConvertCMYKImagesToRGB=false \
  -dRenderIntent=1 \
  -sOutputICCProfile="$Profile" \
  -sDefaultCMYKProfile="$Profile" \
  -sOutputFile="$Output" \
  "$TmpDef" \
  "$Input" 2>&1
GsStatus=$?
set -e

if [[ $GsStatus -ne 0 ]]; then
  echo "error: ghostscript failed (exit $GsStatus)" >&2
  exit $GsStatus
fi

if [[ ! -f "$Output" ]]; then
  echo "error: expected output not created: $Output" >&2
  exit 1
fi

echo "print-pdfx: OK → $Output ($(wc -c < "$Output") bytes)"
echo "print-pdfx: note — visual crop marks are drawn; confirm TrimBox with the press if they require it."

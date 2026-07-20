#!/usr/bin/env bash
# Print preflight: image DPI check + optional PDF box/color smoke checks.
#
# Usage:
#   ./scripts/preflight-print.sh [path/to/book-print.pdf]
#
# Writes: prepress/reports/preflight-print.md
set -euo pipefail

Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

Pdf="${1:-dist/book-print.pdf}"
Report="prepress/reports/preflight-print.md"
mkdir -p prepress/reports

{
  echo "# Print preflight report"
  echo
  echo "Generated: $(date -Iseconds 2>/dev/null || date)"
  echo "PDF: \`$Pdf\`"
  echo
  echo "## 1. Image DPI (src/assets)"
  echo
} > "$Report"

python3 scripts/check-image-dpi.py --report prepress/reports/image-dpi.md || true
{
  echo
  echo "See also \`prepress/reports/image-dpi.md\`."
  echo
  echo "## 2. PDF presence"
  echo
} >> "$Report"

if [[ ! -f "$Pdf" ]]; then
  echo "- **FAIL** — PDF not found: \`$Pdf\`" | tee -a "$Report"
  echo "  Build with: \`./scripts/build.sh print\`" | tee -a "$Report"
  exit 1
fi

Size=$(wc -c < "$Pdf")
echo "- **OK** — \`$Pdf\` ($Size bytes)" >> "$Report"

echo >> "$Report"
echo "## 3. PDF structure smoke checks" >> "$Report"
echo >> "$Report"

# Lightweight marker checks without full PDF parsers.
if grep -a -q "TrimBox\|BleedBox\|CropBox" "$Pdf" 2>/dev/null; then
  echo "- **OK** — page boxes (TrimBox/BleedBox/CropBox) present in PDF stream" >> "$Report"
else
  echo "- **INFO** — no TrimBox/BleedBox string found (Ghostscript may rewrite boxes; visual crop marks still apply)" >> "$Report"
fi

if grep -a -q "GTS_PDFX\|PDF/X" "$Pdf" 2>/dev/null; then
  echo "- **OK** — PDF/X identifier (GTS_PDFX / PDF/X) found" >> "$Report"
else
  echo "- **WARN** — PDF/X identifier not found; was print-pdfx.sh run?" >> "$Report"
fi

if grep -a -q "OutputIntent\|DestOutputProfile" "$Pdf" 2>/dev/null; then
  echo "- **OK** — OutputIntent / DestOutputProfile markers present" >> "$Report"
else
  echo "- **WARN** — OutputIntent markers not found" >> "$Report"
fi

if grep -a -q "/DeviceCMYK\|CMYK" "$Pdf" 2>/dev/null; then
  echo "- **OK** — CMYK markers present" >> "$Report"
else
  echo "- **INFO** — no DeviceCMYK string spotted (may still be ICC-based CMYK)" >> "$Report"
fi

echo >> "$Report"
echo "## 4. Standards map (this project)" >> "$Report"
echo >> "$Report"
cat >> "$Report" << 'EOF'
| Deliverable | Standard | How |
|---|---|---|
| `dist/book.pdf` | Screen RGB (tagged) | `./scripts/build.sh fast` |
| `dist/book-ua.pdf` | PDF/UA-1 | `./scripts/build.sh ua` |
| `dist/book-print.pdf` | PDF/X-3 (CMYK) + 3 mm bleed + crop marks | `./scripts/build.sh print` |
| PDF/A archival | not produced here | Typst `--pdf-standard a-2b` / `a-2a` if needed |

PDF/UA (accessibility) and PDF/X (print) are **independent**. Combining them in one file is possible in theory but not required by this track.

## 5. Spot colours

Typst 0.15 supports `color.spot("PANTONE …", fallback)` natively. This showcase uses process RGB tokens + GS CMYK conversion — **no spot plates**. For a brand spot, define it with `color.spot` and coordinate the plate name with the printer; do **not** run that separation through a blind RGB→CMYK convert.
EOF

echo "preflight-print: wrote $Report"
cat "$Report"

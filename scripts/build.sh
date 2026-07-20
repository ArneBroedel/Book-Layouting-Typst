#!/usr/bin/env bash
# Linux/macOS mirror of scripts/build.ps1.
# Always uses --ignore-system-fonts --font-path fonts for reproducible builds.
set -euo pipefail

Mode="${1:-fast}"
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

if ! command -v typst >/dev/null 2>&1; then
  echo "error: typst CLI not found in PATH" >&2
  exit 1
fi

case "$Mode" in
  fast|watch|ua|print|print-rgb)
    if [[ ! -f src/main.typ ]]; then
      echo "error: missing src/main.typ" >&2
      exit 1
    fi
    ;;
  test|test-watch)
    if [[ ! -f test/main.typ ]]; then
      echo "error: missing test/main.typ (test/ holds standalone experiments; compile them directly)" >&2
      exit 1
    fi
    ;;
  *)
    echo "usage: $0 <fast|watch|ua|print|print-rgb|test|test-watch>" >&2
    exit 1
    ;;
esac

mkdir -p dist

if ! find fonts -maxdepth 1 -type f 2>/dev/null | grep -q .; then
  echo "warning: no font files in fonts/ — build may use only Typst-bundled fonts" >&2
fi

flags=(--root . --ignore-system-fonts --font-path fonts)

case "$Mode" in
  fast)
    typst compile "${flags[@]}" src/main.typ dist/book.pdf
    ;;
  watch)
    typst watch "${flags[@]}" src/main.typ dist/book.pdf
    ;;
  ua)
    typst compile "${flags[@]}" --pdf-standard ua-1 src/main.typ dist/book-ua.pdf
    ;;
  print-rgb)
    # Bleed + crop marks only (RGB). Intermediate for Ghostscript PDF/X.
    typst compile "${flags[@]}" --input print=true src/main.typ dist/book-print-rgb.pdf
    ;;
  print)
    # Full print pipeline: Typst print-RGB → Ghostscript PDF/X CMYK.
    typst compile "${flags[@]}" --input print=true src/main.typ dist/book-print-rgb.pdf
    ./scripts/print-pdfx.sh dist/book-print-rgb.pdf dist/book-print.pdf
    ;;
  test)
    typst compile "${flags[@]}" test/main.typ dist/test.pdf
    ;;
  test-watch)
    typst watch "${flags[@]}" test/main.typ dist/test.pdf
    ;;
esac

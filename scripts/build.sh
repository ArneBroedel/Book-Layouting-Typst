#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-fast}"

cd "$(dirname "$0")/.."

if ! command -v typst >/dev/null 2>&1; then
  echo "Typst CLI nicht gefunden. Bitte Typst installieren und PATH prüfen." >&2
  exit 1
fi

mkdir -p dist

case "$MODE" in
  fast)
    typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
    ;;
  watch)
    typst watch --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
    ;;
  ua)
    typst compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 src/main.typ dist/book-ua.pdf
    ;;
  *)
    echo "Unbekannter Modus: $MODE (erlaubt: fast|watch|ua)" >&2
    exit 2
    ;;
esac

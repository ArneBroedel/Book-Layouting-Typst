#!/usr/bin/env bash
# Remove local build outputs under dist/ (gitignored). Safe: regenerable via typst/bookkit.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

usage() {
  echo "Usage: $0 [--all | --form-lab | --pilots | --production | --book]"
  echo "  Default --all removes entire dist/ (keeps nothing)."
  exit 1
}

target="${1:---all}"
case "$target" in
  --all)
    rm -rf dist
    mkdir -p dist
    echo "cleaned: dist/"
    ;;
  --form-lab)
    rm -rf dist/form-lab
    echo "cleaned: dist/form-lab/"
    ;;
  --pilots)
    rm -rf dist/pilots
    echo "cleaned: dist/pilots/"
    ;;
  --production)
    rm -rf dist/production
    echo "cleaned: dist/production/"
    ;;
  --book)
    rm -f dist/book.pdf dist/book-ua.pdf dist/book-print.pdf dist/book-print-rgb.pdf
    echo "cleaned: dist/book*.pdf"
    ;;
  *) usage ;;
esac

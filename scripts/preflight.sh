#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

required=(git typst)
recommended=(node python)

echo "== Pflichtchecks =="
for cmd in "${required[@]}"; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "[OK] $cmd gefunden"
  else
    echo "[FEHLT] $cmd nicht gefunden" >&2
    exit 1
  fi
done

echo

echo "== Empfehlungchecks =="
for cmd in "${recommended[@]}"; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "[OK] $cmd gefunden"
  else
    echo "[HINWEIS] $cmd nicht gefunden (optional)"
  fi
done

paths=(
  src/main.typ
  src/templates/layout.typ
  src/chapters/01-intro.typ
  fonts
  assets
  dist
)

echo

echo "== Strukturchecks =="
for p in "${paths[@]}"; do
  if [ -e "$p" ]; then
    echo "[OK] $p"
  else
    echo "[FEHLT] $p" >&2
    exit 1
  fi
done

echo

echo "== Versionen =="
echo "git   : $(git --version)"
echo "typst : $(typst --version)"

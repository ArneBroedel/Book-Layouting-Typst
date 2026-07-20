#!/usr/bin/env bash
# Provision skill-pack into multi-agent discovery paths.
# Source of truth: studio .github/skills (generic) + toolset/skill-pack/bookkit
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
Target="${1:-.}"
Target="$(cd "$Target" && pwd)"

mkdir -p "$Target/.github/skills" "$Target/.grok/skills" "$Target/.agents/skills" "$Target/.claude/skills"

link_or_copy() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [[ -e "$dest" || -L "$dest" ]]; then return 0; fi
  ln -s "$src" "$dest" 2>/dev/null || cp -a "$src" "$dest"
}

# Package skill
link_or_copy "$Root/toolset/skill-pack/bookkit" "$Target/.github/skills/bookkit"
link_or_copy "$Target/.github/skills/bookkit" "$Target/.grok/skills/bookkit"
link_or_copy "$Target/.github/skills/bookkit" "$Target/.agents/skills/bookkit"
link_or_copy "$Target/.github/skills/bookkit" "$Target/.claude/skills/bookkit"

# Generic skills from studio (if present)
for s in typst-writer typst-extension pinit-workflow; do
  if [[ -d "$Root/.github/skills/$s" ]]; then
    link_or_copy "$Root/.github/skills/$s" "$Target/.github/skills/$s"
    link_or_copy "$Target/.github/skills/$s" "$Target/.grok/skills/$s"
    link_or_copy "$Target/.github/skills/$s" "$Target/.agents/skills/$s"
    link_or_copy "$Target/.github/skills/$s" "$Target/.claude/skills/$s"
  fi
done

echo "Provisioned skills under $Target (.github / .grok / .agents / .claude)"

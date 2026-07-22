#!/usr/bin/env bash
# Provision skill-pack into multi-agent discovery paths.
# SoT map:
#   bookkit          → toolset/skill-pack/bookkit  (Produkt A)
#   compose-chapter  → toolset/skill-pack/compose-chapter  (Produkt A)
#   media-brief      → domains/medical/skill/media-brief  (Produkt B; skill-pack may symlink)
#   generic          → studio .github/skills/*
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

# Resolve a skill directory preferring an explicit SoT, then skill-pack symlink/copy
resolve_skill_src() {
  local name="$1"
  shift
  local candidate
  for candidate in "$@"; do
    if [[ -d "$candidate" ]]; then
      echo "$candidate"
      return 0
    fi
  done
  return 1
}

provision_skill() {
  local name="$1"
  local src="$2"
  link_or_copy "$src" "$Target/.github/skills/$name"
  link_or_copy "$Target/.github/skills/$name" "$Target/.grok/skills/$name"
  link_or_copy "$Target/.github/skills/$name" "$Target/.agents/skills/$name"
  link_or_copy "$Target/.github/skills/$name" "$Target/.claude/skills/$name"
}

# Package skill (A)
if src="$(resolve_skill_src bookkit \
    "$Root/toolset/skill-pack/bookkit")"; then
  provision_skill bookkit "$src"
fi

# Tech compose skill (A) — SoT under skill-pack
if src="$(resolve_skill_src compose-chapter \
    "$Root/toolset/skill-pack/compose-chapter")"; then
  provision_skill compose-chapter "$src"
fi

# Domain Media skill (B) — SoT under domains/medical; skill-pack may hold a symlink
if src="$(resolve_skill_src media-brief \
    "$Root/domains/medical/skill/media-brief" \
    "$Root/toolset/skill-pack/media-brief")"; then
  provision_skill media-brief "$src"
fi

# Domain Graphics skill (B) — SoT under domains/medical
if src="$(resolve_skill_src medical-graphics \
    "$Root/domains/medical/skill/medical-graphics" \
    "$Root/toolset/skill-pack/medical-graphics")"; then
  provision_skill medical-graphics "$src"
fi

# Generic skills from studio (if present)
for s in typst-writer typst-extension pinit-workflow; do
  if [[ -d "$Root/.github/skills/$s" ]]; then
    provision_skill "$s" "$Root/.github/skills/$s"
  fi
done

echo "Provisioned skills under $Target (.github / .grok / .agents / .claude)"

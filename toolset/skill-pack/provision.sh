#!/usr/bin/env bash
# Provision skill-pack into agent discovery paths.
#
# SoT (edit here only):
#   bookkit compose-chapter studio
#   book-production-orchestrator form-lab-orchestrator
#   typst-writer typst-extension pinit-workflow skill-creator
#     → toolset/skill-pack/<name>
#   media-brief medical-graphics open-assets
#     → domains/medical/skill/<name>
#   content-orchestrator content-review
#     → domains/content-maturity/skill/<name>
#
# Default discovery (relative one-hop links to SoT):
#   .agents/skills/   Grok + Agents-compatible tools
#   .github/skills/   Copilot / generic
#
# Optional vendor clones (off by default):
#   --with-claude     also .claude/skills/
#   --with-grok       also .grok/skills/  (redundant if .agents exists)
set -euo pipefail

Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
WithClaude=0
WithGrok=0
Target=""

usage() {
  echo "Usage: $0 [--with-claude] [--with-grok] [TARGET_DIR]" >&2
  exit 2
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --with-claude) WithClaude=1; shift ;;
    --with-grok) WithGrok=1; shift ;;
    -h|--help) usage ;;
    --) shift; break ;;
    -*) echo "Unknown option: $1" >&2; usage ;;
    *)
      if [[ -n "$Target" ]]; then
        echo "Unexpected argument: $1" >&2
        usage
      fi
      Target="$1"
      shift
      ;;
  esac
done

Target="${Target:-.}"
Target="$(cd "$Target" && pwd)"

mkdir -p "$Target/.github/skills" "$Target/.agents/skills"
if [[ "$WithGrok" -eq 1 ]]; then
  mkdir -p "$Target/.grok/skills"
fi
if [[ "$WithClaude" -eq 1 ]]; then
  mkdir -p "$Target/.claude/skills"
fi

# Relative when dest lives in this checkout; absolute when provisioning a consumer.
link_spec() {
  local src="$1" dest="$2"
  if [[ "$Target" == "$Root" ]]; then
    realpath --relative-to="$(dirname "$dest")" "$src"
  else
    echo "$src"
  fi
}

# Replace wrong/missing links; never clobber a real directory.
relink() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  local spec
  spec="$(link_spec "$src" "$dest")"
  if [[ -L "$dest" ]]; then
    if [[ "$(readlink "$dest")" == "$spec" ]]; then
      return 0
    fi
    rm -f "$dest"
  elif [[ -e "$dest" ]]; then
    echo "skip existing non-link $dest" >&2
    return 0
  fi
  ln -s "$spec" "$dest" 2>/dev/null || cp -a "$src" "$dest"
}

resolve_skill_src() {
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
  relink "$src" "$Target/.github/skills/$name"
  relink "$src" "$Target/.agents/skills/$name"
  if [[ "$WithGrok" -eq 1 ]]; then
    relink "$src" "$Target/.grok/skills/$name"
  fi
  if [[ "$WithClaude" -eq 1 ]]; then
    relink "$src" "$Target/.claude/skills/$name"
  fi
}

if src="$(resolve_skill_src \
    "$Root/toolset/skill-pack/bookkit")"; then
  provision_skill bookkit "$src"
fi

if src="$(resolve_skill_src \
    "$Root/toolset/skill-pack/compose-chapter")"; then
  provision_skill compose-chapter "$src"
fi

if src="$(resolve_skill_src \
    "$Root/toolset/skill-pack/studio")"; then
  provision_skill studio "$src"
fi

if src="$(resolve_skill_src \
    "$Root/toolset/skill-pack/book-production-orchestrator")"; then
  provision_skill book-production-orchestrator "$src"
fi

if src="$(resolve_skill_src \
    "$Root/toolset/skill-pack/form-lab-orchestrator")"; then
  provision_skill form-lab-orchestrator "$src"
fi

if src="$(resolve_skill_src \
    "$Root/domains/medical/skill/media-brief" \
    "$Root/toolset/skill-pack/media-brief")"; then
  provision_skill media-brief "$src"
fi

if src="$(resolve_skill_src \
    "$Root/domains/medical/skill/medical-graphics" \
    "$Root/toolset/skill-pack/medical-graphics")"; then
  provision_skill medical-graphics "$src"
fi

if src="$(resolve_skill_src \
    "$Root/domains/medical/skill/open-assets" \
    "$Root/toolset/skill-pack/open-assets")"; then
  provision_skill open-assets "$src"
fi

if src="$(resolve_skill_src \
    "$Root/domains/content-maturity/skill/content-orchestrator" \
    "$Root/toolset/skill-pack/content-orchestrator")"; then
  provision_skill content-orchestrator "$src"
fi

if src="$(resolve_skill_src \
    "$Root/domains/content-maturity/skill/content-review" \
    "$Root/toolset/skill-pack/content-review")"; then
  provision_skill content-review "$src"
fi

for s in typst-writer typst-extension pinit-workflow skill-creator; do
  if src="$(resolve_skill_src \
      "$Root/toolset/skill-pack/$s" \
      "$Root/.github/skills/$s")"; then
    provision_skill "$s" "$src"
  fi
done

extra=""
[[ "$WithGrok" -eq 1 ]] && extra+=" + .grok"
[[ "$WithClaude" -eq 1 ]] && extra+=" + .claude"
echo "Provisioned skills under $Target (.agents + .github${extra})"

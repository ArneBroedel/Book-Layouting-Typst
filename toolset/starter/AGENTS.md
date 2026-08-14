# AGENTS — bookkit starter

- Unsure where to start? `/studio` (studio checkout) or see the studio `AGENTS.md` skill gate.
- Skills: provision from studio `toolset/skill-pack/` → `.agents/skills` (Grok) and `.github/skills` (Copilot). Optional: `provision.sh --with-claude`.
- Always: `typst compile --ignore-system-fonts --font-path fonts` (or `bookkit build`).
- Fonts: Typst-bundled Libertinus Serif + DejaVu Sans Mono; put extra licensed faces in `fonts/`.
- Import foundation: `#import "/packages/bookkit/lib.typ": *`
- Optional medical: `#import "/packages/bookkit-didactics/lib.typ": *`
- Assembly: cover (optional) → `setup-pages` → chapters via `chapter-opener` (no duplicate `= Title`).
- Do not copy studio `src/chapters` or `research/`.

# AGENTS — bookkit starter

- Skills: provision from studio `toolset/skill-pack/` → `.github/skills`, `.grok/skills`, `.agents/skills`.
- Always: `typst compile --ignore-system-fonts --font-path fonts` (or `bookkit build`).
- Import foundation: `#import "/packages/bookkit/lib.typ": *`
- Optional medical: `#import "/packages/bookkit-didactics/lib.typ": *`
- Assembly: cover (optional) → `setup-pages` → chapters via `chapter-opener` (no duplicate `= Title`).
- Do not copy studio `src/chapters` or `research/`.

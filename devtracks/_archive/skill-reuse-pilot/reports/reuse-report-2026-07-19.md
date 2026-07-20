# Reuse pilot report — SensorHub X200 datasheet (2026-07-19)

## Artifact

- Path: `pilots/reuse-datasheet/main.typ`
- Domain: **industrial IoT / technical datasheet** (non-medical)
- Build: `bookkit build --entry pilots/reuse-datasheet/main.typ` → `dist/toolset/reuse-datasheet.pdf`
- Package: **bookkit foundation only** (no didactics facet, no showcase chapters)

## Skills triggered

| Skill | Used for |
|---|---|
| typst-writer | Setup closure pattern, grid/card rules, no `set page(columns)` |
| bookkit | Import path, repro flags via CLI, public component names |
| typst-extension | not needed (no new `@preview` beyond package internals) |

## 1:1 reuse vs improvisation

| Reused 1:1 | Improvised |
|---|---|
| `setup-typography` / `setup-pages` | Local brand blue `#1a56db` via named `accent:` / `color:` |
| `callout`, `card`, `styled-table`, `feature-grid`, `sidebar-layout`, `key-concept`, `pull-quote`, `code-block`, `badge`, `tag`, `kbd` | Cover as filled header block (not full `book-cover`) for datasheet form |
| Repro font flags via CLI | — |

## Effort

~1 iteration after API discovery (`feature-grid` requires `icon:`; `sidebar-layout` wants `sidebar:` named; `card` body positional).

## Skill gaps found

1. **Package skill API examples** needed for `feature-grid` / `sidebar-layout` signatures → **fixed** by shipping `toolset/skill-pack/bookkit/SKILL.md` with public API table; starter + examples encode correct call sites.
2. Markdown `**bold**` is not Typst — writer skill already says use `*bold*`; pilot reinforced (no new skill rewrite required).

**Skill improvement shipped:** new `bookkit` package skill (provisioned under `.github/skills/bookkit`).

## Conclusion

Post-package reuse works: non-medical document builds without cloning showcase. Track exit criterion for toolset Phase 2: **met**.

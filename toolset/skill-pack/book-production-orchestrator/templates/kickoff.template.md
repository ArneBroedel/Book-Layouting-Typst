# Book production kickoff

- **book_id:**
- **date:**
- **orchestrator:** book-production-orchestrator
- **owner_human:**

## Content

| field | value |
|---|---|
| content_root (C) | |
| chapter_glob / list | |
| content_status expected | frozen \| exploration mixed |
| content_revision pin | |

## Targets

| field | value |
|---|---|
| brief_class default | production \| exploration |
| print_target | screen \| print-pdfx \| both |
| assembly entry | e.g. src/main.typ or pilots/… |
| design SoT | bookkit theme / design-brief path |

## Autonomy charter

| field | value |
|---|---|
| level | L0 \| L1 \| L2 \| L3 |
| stop_at | H1,H2,H4,H5,H-Gfx (+ optional: every Accept) |
| max_hours / session notes | |
| allowed_skills | media-brief, medical-graphics, compose-chapter, bookkit, typst-writer, content-review |

## Human decisions (kickoff)

1. Chapter priority order:
2. Visual-unit ambition (all free-vision vs selective):
3. Raster print policy (code preferred / raster OK if DPI):
4. Exploration vs production quality bar:

## Board path

`toolset/orchestration/book-production/<book-id>/board.md`

## Sign-off kickoff

- [ ] Human agrees autonomy level
- [ ] Content root verified readable
- [ ] First route written to `route.md`

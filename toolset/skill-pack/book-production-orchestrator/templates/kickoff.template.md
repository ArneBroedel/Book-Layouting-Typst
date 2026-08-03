# Book production kickoff

- **book_id:**
- **date:**
- **orchestrator:** book-production-orchestrator
- **owner_human:**
- **scope:** full-book \| single-chapter \| explore-portfolio

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
| playbook_pin (optional) | date or skill rev — advisory cite |
| production_bridge (optional) | path \| — — advisory; never Accept/CLEAN waive |

## Autonomy charter

| field | value |
|---|---|
| level | L0 \| L1 \| L2 \| L3 |
| stop_at | H1,H2,H4,H5,H-Gfx (+ optional: every Accept) |
| max_hours / session notes | |
| allowed_skills | media-brief, open-assets, medical-graphics, compose-chapter, bookkit, typst-writer, content-review |

## Human decisions (kickoff)

1. Chapter priority order:
2. Visual-unit ambition (all free-vision vs selective):
3. Raster print policy (code preferred / raster OK if DPI):
4. Exploration vs production quality bar:

## Board path

`toolset/orchestration/book-production/<book-id>/board.md`

For **sit.2 single-chapter** durable resume: same schema with `scope: single-chapter` (no third board type).

## Sign-off kickoff

- [ ] Human agrees autonomy level
- [ ] Content root verified readable
- [ ] scope + optional playbook_pin / production_bridge recorded
- [ ] First route written to `route.md`

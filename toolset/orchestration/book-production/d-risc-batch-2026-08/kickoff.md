# Book production kickoff

- **book_id:** `d-risc-batch-2026-08`
- **date:** 2026-08-01
- **orchestrator:** book-production-orchestrator (via `/studio`)
- **owner_human:** (session)
- **source_batch:** Kursbuch5 `content/chapters/staging/pilots/2026-08-d-risc-batch`

## Banner

> **`brief_class: exploration`** — didactic pilot quality (Design CLEAN + Visual CLEAN) required.  
> **Not** production freeze / H2 production / PDF-X / imprimatur.  
> Agent-only H-Explore (D4): agent enforces Visual CLEAN; Human may sample anytime.  
> **Clean slate:** do **not** treat `*-2026-08-01` explore pilots as done — new slugs + new artifacts.

## Content

| field | value |
|---|---|
| content_root (C) | `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-08-d-risc-batch` |
| chapter list | II-1 D-RISC · IV-2 Rückenschmerz · V-3 Gicht · V-3 Kompartmentsyndrom |
| content_status expected | draft-s2 (exploration) |
| content_revision pin | n/a exploration |
| notes | Critical Claims in `…/notes/*.notes.md` (C-side; pin through only) |

### Inventory

| chapter_id | genre | content path |
|---|---|---|
| `ii1-drisc-batch-2026-08` | methodik / framework | `methodik/chapter-ii-1-d-risc.md` |
| `iv2-ruecken-batch-2026-08` | leitsymptom | `leitsymptom/chapter-iv-2-rueckenschmerz.md` |
| `kl-gicht-batch-2026-08` | kl-kurz | `monographs/chapter-v-3-gicht.md` |
| `kl-kompartment-batch-2026-08` | kl-kurz | `monographs/chapter-v-3-kompartmentsyndrom.md` |

## Targets

| field | value |
|---|---|
| brief_class default | **exploration** |
| print_target | **screen** (per-chapter PDF + PNG previews) |
| assembly entry | deferred |
| design SoT | packages/bookkit + monorepo fonts |
| portfolio N | **4** |
| genre mix | methodik + leitsymptom + 2× kl-kurz |

## Autonomy charter

| field | value |
|---|---|
| level | **L2** |
| stop_at | H-Design, H-Gfx, caps/errors; **not** every Accept; Human H-Explore optional |
| max_hours / session notes | multi-session via board resume |
| allowed_skills | media-brief, medical-graphics, compose-chapter, bookkit, typst-writer, studio |
| quality norms | design-quality-system + CRPS process-review (focus free vision, anti-squish, demotion ladder) |
| order | II-1 → IV-2 → Gicht → Kompartment (framework first, then application, then KL) |

## Human decisions (kickoff) — resolved 2026-08-01 via studio

1. Chapter priority: II-1, IV-2, Gicht, Kompartment  
2. Visual ambition: selective; code-first OS/flow; KL urgency/mimic code; free vision only when gain clear (no body anatomy default)  
3. Raster: code preferred; asset only PASS + gates  
4. Exploration quality bar: Design CLEAN + Visual CLEAN for every shipped pilot PDF  
5. Old explore board `kursbuch-explore-2026-08` stays closed — **new board only**

## Board path

`toolset/orchestration/book-production/d-risc-batch-2026-08/board.md`

## Sign-off kickoff

- [x] Human decisions recorded (studio intake)  
- [x] Content root verified readable  
- [x] First route written to `route.md`  
- [x] **SESSION-START.md** = cold-start protocol  

## Cold-start (new agent window)

Human pastes resume from **`SESSION-START.md`**.  
Agent must **not** continue “from prior chat memory” as process SoT — only board + skills.

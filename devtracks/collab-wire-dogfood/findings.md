# Collab wire dogfood — 2026-08-03

- **Contract pin:** `toolset/skill-pack/COLLABORATION-CONTRACT.md` (post-trilogy residual section)
- **Git pin:** `807ecfa` (planning commit) · suite run on dirty tree + follow-up commits
- **Template pin:** board/route/quality-packet/form-spec live under skill-pack + `domains/medical/templates/`
- **Operator:** agent (Human authorized full R1→R2 pipeline 2026-08-03)
- **Board slug:** `toolset/orchestration/book-production/dogfood-sit2-2026-08-03/`

---

## Content pins

| Scenario | Pin | Path |
|---|---|---|
| A | Code-only OS sequence | `domains/medical/briefs/ii1-drisc-batch-2026-08-pflicht.form-spec.md` · pilot `toolset/compose/pilots/ii1-drisc-batch-2026-08/` |
| B | Open-assets realism | `domains/medical/assets/form-lab/gicht-2026-08-o/MANIFEST.md` · pilot `toolset/compose/pilots/form-lab-gicht-o/` |
| C | Multi-unit KL | `domains/medical/briefs/kl-gicht-2026-07-31.{accept,quality-packet}.md` + unit form-specs · PDF `dist/pilots/kl-gicht-2026-07-31/` (local; gitignored) |
| D | Cold resume | board above + `SESSION-START.md` |
| E | T3 cell adoption | greenfield board (2 rows) — not retrofit of full portfolio |
| F | Portfolio Accept audit | all `domains/medical/briefs/*.accept.md` (N=25) + 3 live boards |

**Note:** Legacy form-specs omit `open_asset_scan` field (templates have it). Dogfood A/B treat expected enum as **procedural** (skip vs required) against live Contract/templates; do not backfill all briefs in this track.

---

## Scenario matrix

| ID | Status | Evidence paths | Notes |
|---|---|---|---|
| **A** | **pass** | board `dogfood-A-skip`; form-spec pin; Contract skip = no MANIFEST | Wire walk: code-only unit → `open_asset_scan=skip` · `needs_open_assets=no` · no empty MANIFEST invented · L0-style no durable board required (board row only for suite cohesion) |
| **B** | **pass** | `domains/medical/assets/form-lab/gicht-2026-08-o/MANIFEST.md` (+ CREDITS, accepted jpgs); board `dogfood-B-required` | Wire walk: realism unit → `open_asset_scan=required` · MANIFEST outcome `accepted` before embed · rights docs present · no cargo-cult empty MANIFEST |
| **C** | **pass** | board `dogfood-C-multi` + unit rows; gicht Accept/packet; macro_vc=clean | Multi-unit re-board under T3 columns with `scope: single-chapter`; unit + chapter quality cells filled; durable board under book-production (no shadow studio board) |
| **D** | **pass** | `SESSION-START.md` · `route.md` quality mirrors | Cold-resume instructions point only to board/route; next_skill/owner = book-production-orchestrator; no parallel studio board created |
| **E** | **pass** | board chapters incl. stub `dogfood-E-sample-2` | T3 template usable: quality columns render and fill without noise. Pre-T3 live boards (0/3) not migrated (sample-only; out of mass-migrate scope) |
| **F** | **fail** (sensor → **GO**) | See audit below | Accept/packet path discipline **does not hold** across portfolio |

---

## Scenario F — Accept / packet audit (Phase B sensor)

### Method

- Parse all 25 `domains/medical/briefs/*.accept.md`
- Extract `quality_packet_path` (markdown bold-safe)
- Open packet; collect backtick / absolute tokens with path extensions
- Resolve vs packet parent + repo root
- Boards: check chapter header for `quality_packet` column

### Counts

| Metric | N |
|---|---|
| Accept records | 25 |
| No `quality_packet_path` field (and no reliable link) | **10** |
| Linked packet file missing | 0 |
| Packets with **no resolvable file path tokens** (hollow / code-only prose) | **12** |
| Packets with ≥1 listed path missing on disk (after filter) | **≥1** clear (e.g. crps vision asset paths; basename-only PNG tokens) |
| Live boards with T3 `quality_packet` column | **0 / 3** |
| Accepted-ish chapter rows on pre-T3 boards | **19** (explore 10 + demo 5 + d-risc 4) without qp cell |

### GO evidence (concrete)

1. **Accept without packet field:** e.g.  
   `domains/medical/briefs/kl-crps-wp9-2026-07-31.accept.md`  
   `domains/medical/briefs/iii5-cauda-notfallkarte.accept.md`  
   (+ 8 more in list above) — Accept recorded; no machine-checkable packet link.
2. **Hollow packets after Accept:** e.g.  
   `ii1-drisc-batch-2026-08.accept.md` → sibling quality-packet with no resolvable `.png/.pdf` path tokens (code winners only; no PNG presence proof).  
   Same pattern: `kl-mi-2026-08-01`, `kl-stroke-2026-08-01`, batch packets, etc. (**12**).
3. **Board idle/accepted without quality_packet cell:** all three live boards use pre-T3 schema; portfolio marked accepted/idle cannot resume-check packet path from board alone.
4. **Path presence gap even when packet links exist:** listed vision/PDF basenames or absolute-ish tokens that do not resolve consistently; dist pilot PNGs are **gitignored** (`dist/`) so clean clones lose Accept-linked page evidence while Accept remains.

### Non-evidence (not used for GO alone)

- Single agent slip mid-session (not observed as sole signal).
- Ellipsis tokens in older packets (`…-urgency…`) — filtered as noise.

---

## Phase B decision

| Field | Value |
|---|---|
| **Decision** | **GO** |
| **Soft-gate track action** | **Unblock** `quality-packet-soft-gate` and implement |
| **Human OK / waiver** | Human message 2026-08-03: execute R1+R2 fully through implementation — treated as GO confirmation |
| **Evidence** | F: 10 Accepts without packet field; 12 hollow packets; 0/3 boards with T3 qp cells while accepted rows exist; gitignored dist PNG paths under Accept-linked packets |
| **Why not DEFER** | Pattern is **portfolio-wide**, not a single slip; soft presence gate is exactly the T3 Phase B residual |

### Soft-gate intent (for R2)

- Opt-in `--quality-packet PATH`
- Presence-only WARN (never “Visual CLEAN certified”)
- Default validate/smoke without flag stays green for pure A

---

## Hygiene patches

| Patch | Severity | Status |
|---|---|---|
| studio `routes.md` open-assets handoff dropped `skip` | small | **fixed** (add `required \| optional \| skip` + skip note) |
| Legacy form-specs omit `open_asset_scan` | process debt | **documented** — no mass backfill in R1 |
| Pre-T3 boards lack quality columns | process debt | **sample board only** — no mass migrate |
| Form Spec checklist missing “open_asset_scan set” tick | small | optional follow-up if not patched in R1 |

No CLI in this track. No CLEAN redefinition.

---

## Recommendations (non-binding)

1. Ship soft quality-packet path gate (R2).  
2. On next portfolio board touch, retrofit T3 columns (or start new boards from template only).  
3. Prefer durable PNG evidence under non-gitignored pilot trees when Accept claims Visual CLEAN.  
4. When writing Accept, always set `quality_packet_path` to a real repo-relative file.

---

## Success criteria check

| ID | Met? |
|---|---|
| S1 findings report | yes |
| S2 A–F status | yes |
| S3 Phase B decision | **GO** |
| S4 hygiene limited | yes |
| S5 indexes update | in harvest |
| S6 archive | after harvest commit |

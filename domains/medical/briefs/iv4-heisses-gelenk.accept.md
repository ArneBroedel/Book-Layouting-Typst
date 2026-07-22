# Accept record (Media)

- **chapter_id:** IV-4 / `heisses-gelenk`
- **brief_path:** `domains/medical/briefs/iv4-heisses-gelenk.brief.md`
- **feasibility_path:** `domains/medical/briefs/iv4-heisses-gelenk.feasibility.md`
- **graphics_decision_path:** `domains/medical/briefs/iv4-heisses-gelenk.graphics.md`
- **spike_paths:**
  - `dist/spikes/graphics/iv4-heisses-gelenk/recreate-p1.png` (Typst B1)
  - `dist/spikes/graphics/iv4-heisses-gelenk/compare.pdf`
  - `domains/medical/assets/iv4-heisses-gelenk/vision-free-01.png` (free — claim drift; provenance)
  - `domains/medical/assets/iv4-heisses-gelenk/vision-refined-01.png` (B2 claim-cleaned)
- **date:** 2026-07-20 (body); **graphics A/B accept:** 2026-07-22
- **media_reviewer:** media-designer (Welle-03 pilot IV-4 + medical-graphics batch)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **accept** | Ideal early split-gatekeeper → entry SPLIT → matrices → flow → ddx → KI/memo/labor → quiet trailing is reachable; **pilot compose authorized**. |
| S0 chapter-opener | accept | Lernziel lead; no exam chrome. |
| S1 Gatekeeper early (`cave`) | accept | **Required early.** Exact thresholds: Fieber ≥ 38,5 °C + AZ → **112**; NWB ohne Sepsis → **ED noch heute**. No mixed answer. |
| S2 Einstiegsfrage SPLIT (`callout`) | accept | Two numbered paths. |
| S3 Ursachenmatrix | accept | `styled-table` R4→R1. |
| S4 Red-Flag-Box | accept | Urgency column loud; thresholds copy-through. |
| S5 Multi-S1-Split | accept | Strict bacterial path wins in Direktzugang column. |
| S6 Entscheidungs-Flow | **accept** | Graphic winner: recreate code — see graphic winners |
| S6 graphic A/B | **accept** | Winner **recreate** `#entscheidungs-flow-heisses-gelenk()` |
| S7 R+I+S→C | accept | After path core. |
| S8 Kontrastpaare (`ddx-box`) | accept | Short only. |
| S9 Absolute KI (`cave`) | accept | After action path. |
| S10 Gicht/OA memo | accept | Label ≠ free pass. |
| S11 Labor/Scores table | accept | „darf nicht entwarnen“ — no invented cut-offs. |
| S12–S13 trailing / claims | accept (approx) | Quiet; audit appendix copy-through. |
| Genre / early gatekeeper | accept | Early gatekeeper required and bound. |

## Graphic winners (A/B 2026-07-22)

| unit_id | accepted winner | note |
|---|---|---|
| S6 Entscheidungs-Flow | **recreate (code)** `#entscheidungs-flow-heisses-gelenk()` | Exact 112/ED/Stunden split; Kind bifurcation; gatekeeper ≥ 38,5 °C; Default-to-Danger. Free had invented vitals → **not** production. B2 refined PNG = claim-cleaned look provenance (screen DPI). Module: `toolset/compose/spikes/graphics/iv4-heisses-gelenk/lib/entscheidungs-flow.typ`. |

## Pedagogy / scan checks (Media) — graphics add-on

- [x] Graphic candidates reviewed; free claim audit failed → recreate wins
- [x] Split thresholds copy-through only (no invented vitals in winner)
- [x] Default-to-Danger + no probe treatment visible

### Media notes for Compose (S6 graphic)

1. Prefer `#entscheidungs-flow-heisses-gelenk()` over plain bullets.
2. Never ship free-01 without B2 claim audit pass.
3. Keep 112 vs ED vs binnen Stunden as separate chips — no mixed answer.

## If revise

*(not applicable — overall accept)*

Would have blocked: mixed 112/ED; gatekeeper late; Gicht/OA softens 112; invented CRP cut-offs; sources before action; claim paraphrase; free-vision inventing clinical vitals.

## Pedagogy / scan checks (Media)

- [x] Main job / gatekeeper findable in first screenful (genre-dependent)
- [x] Action/decision path louder than links/sources
- [x] Order-critical steps read as ordered
- [x] Urgency weights from Brief not flattened in spike/approx
- [x] No claim rewrite or new clinical thresholds in layout

## Content freeze pin (production)

- [ ] Freeze record verified (`content_status: frozen`)
- [ ] `content_revision` on brief matches freeze
- [ ] `brief_class` is **production** (not exploration)

**N/A — exploration brief.**

## Production compose authorized?

- [ ] **yes** — compose may run with this brief + feasibility **and** freeze pin
- [x] **no**

## Pilot compose authorized?

- [x] **yes** — exploration pilot compose may run with this brief + feasibility (Welle-03)
- [ ] **no**

### Media notes for Compose

1. **Gatekeeper early required** — `cave` first after opener; thresholds **exact copy-through** (38,5 °C; Non-weight-bearing; ED noch heute; binnen Stunden).
2. Never mash 112 and ED into one answer cell.
3. Multi-S1-Split: Direktzugang column follows **stricter bacterial path** when S1s diverge.
4. Labor/Scores: only „what it must not do“ — no new numeric all-clear thresholds.
5. Claims: **copy-through only**.
6. Form whitelist: S0 `chapter-opener` · S1 `cave` · S2 `callout` · S3–S5 `styled-table` · S6 `protocol-steps` · S7 `styled-table` · S8 `ddx-box` · S9 `cave` · S10 `memo` · S11 `styled-table` · S12 `section-break`+BASIS · S13 trailing Audit.

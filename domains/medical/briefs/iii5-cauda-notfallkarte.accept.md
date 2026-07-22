# Accept record (Media)

- **chapter_id:** III-5 / `cauda-notfallkarte`
- **brief_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.brief.md`
- **feasibility_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.feasibility.md`
- **graphics_decision_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.graphics.md`
- **spike_paths:**
  - `dist/spikes/graphics/iii5-cauda-notfallkarte/recreate-p1.png` (Typst B1)
  - `dist/spikes/graphics/iii5-cauda-notfallkarte/compare.pdf`
  - `domains/medical/assets/iii5-cauda-notfallkarte/vision-free-01.png` (free; EN chrome — provenance)
- **date:** 2026-07-20 (body); **graphics A/B accept:** 2026-07-22
- **media_reviewer:** media-designer (Wave 4.2 E2E III-5 + medical-graphics batch)

> **Supersedes Wave-2 fictive demo.** The previous Accept under this path was a
> shape-demo with embedded fictive feasibility and production compose **not**
> authorized. This record is the real Wave-4 Media Accept against Tech feasibility
> `iii5-cauda-notfallkarte.feasibility.md` (2026-07-20).

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **accept** | Ideal Stop → Trigger → Triage → Protokoll → kurze DDx → leise Links is reachable with mapped + named approx; pilot compose authorized. |
| S0 chapter-opener | accept | Genre „Handlungskarte“ / Erstkontakt MSK; no learning-objectives chrome. |
| S1 Gatekeeper early (`cave`) | accept | **Required early** — first catalog form after opener (≤3-form window). One stop only; no cave-spam. |
| S2 Triggers + Safety (`callout` + BASIS list) | accept (approx) | Safety Questions as nested list under callout OK for pilot; dedicated check-strip remains wishlist. |
| S3 Handlungstabelle (`styled-table`) | accept | Urgency column + Default-to-Danger / „ein Flag reicht“ rows kept; Schwellen-Hinweis as table footnote. Urgency-lane chrome deferred. |
| S4 Sofortmaßnahmen | **accept** | Graphic winner: recreate code — see graphic winners |
| S4 graphic A/B | **accept** | Winner **recreate** `#sofortmassnahmen-ces()` |
| S5 Verwechslungen (`ddx-box`) | accept | Short „sieht aus wie … / Notfall wenn …“ only; no DDx essay. |
| S6–S7 Verweise / Quellen | accept (approx) | `section-break` + quiet BASIS lists trailing only — never before F1–F4. |
| S8 Critical Claims | accept | Trailing Audit appendix only (copy-through claims for validator); never competes with action path. |
| urgency-strip / `decision-table` wishlist | accept (defer) | Not blocking first pilot. |
| Genre minima | accept | Early gatekeeper; ≥4 distinct forms; not table-only. |

## Graphic winners (A/B 2026-07-22)

| unit_id | accepted winner | note |
|---|---|---|
| S4 Sofortmaßnahmen | **recreate (code)** `#sofortmassnahmen-ces()` | Hard-stop protocol: danger step 1 + Verbote; BLS escape short; claim-safe German. Free vision = composition provenance only (English stage chrome/typos — not production). Module: `toolset/compose/spikes/graphics/iii5-cauda-notfallkarte/lib/sofortmassnahmen.typ`. |

## Pedagogy / scan checks (Media) — graphics add-on

- [x] Graphic candidates reviewed (ideal proximity + learner job)
- [x] No claim rewrite in production winner
- [x] Hard stops + order weight visible; BLS not main trunk

## If revise

*(not applicable — overall accept)*

Would have blocked compose: gatekeeper buried after table/links; S4 collapsed to prose wall without numbered weight; table-only body; sources/claims before action path.

### Media notes for Compose (S4 graphic)

1. Prefer `#sofortmassnahmen-ces()` over plain bullets for S4.
2. Do not promote free PNG (English chrome) without B2 German-only refine.
3. Keep BLS as short escape only (`→ III-2`).

## Production compose authorized?

- [x] **yes** — compose may run with this brief + feasibility
- [ ] **no**

### Media notes for Compose

1. **Gatekeeper early required** — `cave` immediately after `chapter-opener` (first catalog form in body). Master-Verweis dezent inside/after the box only.
2. **S4 protocol-steps approx OK for pilot** — BASIS numbered enum + `callout` (hard technique bans may use limited extra emphasis inside steps). **Gap `protocol-steps` remains visible** — do not mark S4 as fully mapped; do not invent the planned form.
3. Do **not** put sources, master-links, or Critical Claims before the action path.
4. Clinical claims: **copy-through only** — no paraphrase of triage/urgency meaning.
5. Form whitelist binding (post-Accept): S0 `chapter-opener` · S1 `cave` · S2 `callout`+lists · S3 `styled-table` · S4 enum+`callout` · S5 `ddx-box` · S6 `section-break`+list · S7 BASIS trailing · S8 trailing Audit BASIS.

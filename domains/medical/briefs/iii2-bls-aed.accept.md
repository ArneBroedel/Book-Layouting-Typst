# Accept record (Media)

- **chapter_id:** III-2 / `bls-aed-notfallprozeduren`
- **brief_path:** `domains/medical/briefs/iii2-bls-aed.brief.md`
- **feasibility_path:** `domains/medical/briefs/iii2-bls-aed.feasibility.md`
- **graphics_decision_path:** `domains/medical/briefs/iii2-bls-aed.graphics.md`
- **spike_paths:**
  - `dist/spikes/graphics/iii2-bls-aed/code-p1.png` (Fletcher)
  - `dist/spikes/graphics/iii2-bls-aed/hybrid-p1.png` (hybrid **v2**: SVG + Typst labels *on* nodes)
- **date:** 2026-07-20 (body); **graphics A/B accept:** 2026-07-22 (v2 fair re-run)
- **media_reviewer:** media-designer (Wave follow-up E2E III-2 + medical-graphics gold pilot)

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **accept** | Gatekeeper → Trigger → 112-Tabelle → dual protocols (Algorithmus + AED) matches free ideal; `protocol-steps` now stable closes high wishlist. |
| S1 Gatekeeper early | accept | One strong stop cue. |
| S4/S5 dual protocols | accept | Separate protocol modules as recommended in author Q1. |
| S4 graphic A/B | **accept** | Winner **hybrid v2** (SVG form + Typst on nodes); code = fallback — see graphic winners |
| S9 Scope in body | accept | Binary table after action core. |
| urgency-strip wishlist | accept (defer) | `styled-table` sufficient for pilot. |

## Graphic winners (A/B 2026-07-22, v2 fair re-run)

| unit_id | accepted winner | note |
|---|---|---|
| S4 Primär-Algorithmus | **hybrid v2** (SVG + Typst labels on nodes) | v1 hybrid was incomplete (foot legend only) → unfair code win. v2 restores contiguity; dual green/red lanes + on-node actions match ideal and stress scan. **Code (Fletcher)** remains documented fallback for single-file maintainability. |
| S5 AED | code / `protocol-steps` | No A/B; linear sequence — list chrome OK |

## If revise

*(not applicable)*

## Pedagogy / scan checks (Media) — graphics add-on

- [x] Graphic candidates reviewed (ideal proximity + learner job)
- [x] No claim rewrite or new clinical thresholds in images
- [x] Branching 4a/4b visible in accepted winner

## Production compose authorized?

- [x] **yes** — compose may run with this brief + feasibility
- [ ] **no**

### Media notes for Compose

1. Keep Algorithmus and AED as **two** modules (not merged).
2. **S4 preferred realization:** hybrid pattern from `spike-hybrid.typ` (SVG base + Typst `place` slots). Fallback: Fletcher (`spike-code.typ`) or `protocol-steps` if page budget forces list chrome — document if so.
3. Do not invent vital-number thresholds; claims and HiL copy-through only.
4. **Never** ship SVG-only or foot-legend-only as “hybrid flowchart” — labels must sit on node slots (contiguity).

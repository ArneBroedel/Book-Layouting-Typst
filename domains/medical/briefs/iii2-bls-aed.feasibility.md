# Feasibility note

- **chapter_id:** III-2 / `bls-aed-notfallprozeduren`
- **brief_path:** `domains/medical/briefs/iii2-bls-aed.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **creative_first:** true
- **author:** tech role
- **date:** 2026-07-20
- **graphics_decision_path:** `domains/medical/briefs/iii2-bls-aed.graphics.md` (gold A/B 2026-07-22)

## Sections

| brief_section_id | status | graphic_mode | form_id or gap_name | notes |
|---|---|---|---|---|
| S0 Opener | mapped | none | `chapter-opener` | Karten-Titel |
| S1 Gatekeeper | mapped | none | `cave` | early window; alt. `memo` |
| S2 Triggers | approx | none | `callout` + BASIS list | scan cues |
| S3 Handlungstabelle 112 | mapped | none | `styled-table` | urgency columns |
| S4 Primär-Algorithmus | custom | **code** (recreate of free vision) | `primar-algorithmus-bewusstlosigkeit` module | Free Nano Banana vision → Typst cards; see graphics + vision notes |
| S5 AED-Handlungskern | mapped | code | `protocol-steps` | numbered AED sequence |
| S6 Lagerungen | mapped | none | `styled-table` | indication matrix |
| S7 Überwachung | approx | none | `callout` / short `styled-table` | no invented vitals |
| S8 Sofortmaßnahmen Org | mapped | none | `protocol-steps` | org checklist |
| S9 Scope HP Physio | mapped | none | `comparison-table` or `styled-table` | binary allow/deny |
| S10 Praxis-Notfallplan | mapped | none | `protocol-steps` | min contents |
| S11 Verwechslungen | mapped | none | `ddx-box` | short |
| S12 Links/Quellen | approx | none | `section-break` + BASIS | trailing quiet |
| Critical Claims | non-body | none | trailing BASIS list | copy-through audit |

## Catalog gaps to file

- `decision-table` / urgency-strip still optional wishlist (not blocking; table approx OK)
- Branching is covered via `protocol-steps` labels `4a`/`4b` — no separate branch form needed for pilot

## Graphics

- [x] Graphics role invoked — Decision Note linked above
- S4 A/B v2: code vs **true hybrid** → recommended winner **hybrid**; code = fallback

## Spike recommended?

- [ ] no
- [x] yes — goal: **ab-pair S4** branching protocol (done 2026-07-22)
  - code: `toolset/compose/spikes/graphics/iii2-bls-aed/spike-code.typ`
  - hybrid: `toolset/compose/spikes/graphics/iii2-bls-aed/spike-hybrid.typ`
  - PNG: `dist/spikes/graphics/iii2-bls-aed/{code,hybrid}-p1.png`

## Ready for Media Accept?

- [x] yes
- [ ] no — blockers:

**Media Accept focus (graphics add-on):** confirm S4 winner **hybrid v2** (or code fallback / protocol-steps approx).

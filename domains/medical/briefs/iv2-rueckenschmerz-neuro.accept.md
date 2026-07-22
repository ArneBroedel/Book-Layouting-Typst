# Accept record (Media)

- **chapter_id:** IV-2 / `rueckenschmerz-neuro`
- **brief_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.brief.md`
- **feasibility_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.feasibility.md`
- **graphics_decision_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.graphics.md`
- **spike_paths:**
  - `dist/spikes/graphics/iv2-rueckenschmerz-neuro/recreate-p1.png` (Typst recreate B1)
  - `dist/spikes/graphics/iv2-rueckenschmerz-neuro/compare.pdf` (free PNG ‖ Typst)
  - `dist/spikes/graphics/iv2-rueckenschmerz-neuro/compare-b2.pdf` (free ‖ refined ‖ Typst)
  - `domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png` (free vision ideal provenance)
  - `domains/medical/assets/iv2-rueckenschmerz-neuro/vision-refined-01.png` (B2 refined look, optional)
- **date:** 2026-07-20 (body); **graphics A/B accept:** 2026-07-22
- **media_reviewer:** media-designer (Welle-03 pilot IV-2 + medical-graphics free-first pilot #2)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **accept** | Ideal gatekeeper → entry → matrix → flow → RF → R+I+S → ddx → boxes → quiet links reachable with mapped + named approx; **pilot compose authorized**. |
| S0 chapter-opener + Lernziel lead | accept | Lead carries learning goal; no exam chrome. |
| S1 Gatekeeper early (`cave`) | accept | **Required early** — first catalog form after opener. One stop only in early window. |
| S2 Einstiegsfrage (`callout`) | accept | First safety question scannable. |
| S3 Ursachenmatrix (`styled-table`) | accept | R4→R1; bold R-labels for rank. |
| S4 Entscheidungs-Flow | accept | Ordered protocol; order weight required — see graphic winners for production chrome. |
| S4 graphic A/B | **accept** | Winner **recreate (code)**; free vision = ideal provenance — see graphic winners |
| S5 Red-Flag-Box (`styled-table`) | accept | Urgency column loud; Default-to-Danger / „ein Flag reicht“ rows kept. Lane chrome deferred. |
| S5b Safety Questions (`callout`+list) | accept (approx) | Under RF table OK for pilot. |
| S6 R+I+S→C (`styled-table`) | accept | After RF; I/S footnote. |
| S7 Kontrastpaare (`ddx-box`) | accept | Short pairs only. |
| S8 KI/Score/Alter boxes | accept | After action path only — not early cave-spam. |
| S9–S10 Verweise / Quellen / Claims | accept (approx) | Trailing quiet; claims audit appendix copy-through. |
| Genre / early gatekeeper | accept | Early gatekeeper required and bound. |

## Graphic winners (A/B 2026-07-22)

| unit_id | accepted winner | note |
|---|---|---|
| S4 Entscheidungs-Flow | **recreate (code)** `#entscheidungs-flow-rueckenschmerz()` | Free vision set stepped vertical protocol 1–4 + solid red urgency 1–2 + R/I/S trio + loud Default-to-Danger. B1 Typst recreate matches structure/contiguity with claim-safe labels, bookkit tokens, FA6 icons — preferred for print/compose maintainability. **Free** (`vision-free-01.png`) + **B2 refined** (`vision-refined-01.png`) = ideal/look provenance only (screen DPI; not print production). B2 refined palette/chips/Default-to-Danger louder — optional asset if ever needed; production remains Typst. |

## If revise

*(not applicable — overall accept; S4 graphic accept)*

Would have blocked: gatekeeper buried after tables/links; urgency flattened; sources before action path; claim paraphrase; inventing clinical thresholds; S4 flattened to plain bullets without order weight.

## Pedagogy / scan checks (Media)

- [x] Main job / gatekeeper findable in first screenful (genre-dependent)
- [x] Action/decision path louder than links/sources
- [x] Order-critical steps read as ordered
- [x] Urgency weights from Brief not flattened in spike/approx
- [x] No claim rewrite or new clinical thresholds in layout

## Pedagogy / scan checks (Media) — graphics add-on

- [x] Graphic candidates reviewed (ideal proximity + learner job)
- [x] No claim rewrite or new clinical thresholds in images
- [x] Ordered triage First-Look → RF → R/I/S → C + Default-to-Danger loud under scan stress

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

1. **Gatekeeper early required** — `cave` immediately after `chapter-opener`.
2. Red-Flag urgency column must stay loud (bold 112/ED rows); do not equalize with Treat row.
3. **S4 preferred realization:** `#entscheidungs-flow-rueckenschmerz()` from `toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ` (recreate winner). May keep a light process-pathway / scan strip if page budget wants a second skim cue — **do not** flatten S4 to plain bullets or sole `protocol-steps` list chrome that loses urgency cards / Default-to-Danger banner.
4. Post-path boxes (LWS-KI, Scores, Alter) only **after** RF / R+I+S / ddx core.
5. Clinical claims: **copy-through only** — no paraphrase of 112 vs. ED vs. gleichtags splits; no invented Restharn-ml / score cut-offs.
6. Form whitelist (non-graphic units): S0 `chapter-opener` · S1 `cave` · S2 `callout` · S3 `styled-table` · S5 `styled-table`+`callout` · S6 `styled-table` · S7 `ddx-box` · S8 `cave`/`memo` · S9 `section-break`+BASIS · S10 trailing Audit. **S4:** graphic module above (not plain bullets).

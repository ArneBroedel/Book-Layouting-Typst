# Claim audit — Free Vision (kl-mscc-spine)

**Date:** 2026-07-26  
**Mode:** free vision G1 → audit before Accept-asset  
**Rule:** German pins only; no invented thresholds; no form-meta preferred in print  
**Asset:** `domains/medical/assets/kl-mscc-spine/vision-free-01.png` (896×1200)  
**Preview:** `dist/spikes/graphics/kl-script-system/vision-mscc-01.png`  
**Form Spec:** `domains/medical/briefs/kl-mscc-spine.form-spec.md`  
**Vision:** `domains/medical/briefs/kl-mscc-spine.vision.md`  
**structure_reference:** none

---

## Verdict: **PASS**

| | |
|--|--|
| **Verdict** | **PASS** (minor chrome headers; one teaching compression) |
| **Must-see** | Spine localization ✓; red-flag pain pattern ✓; Neuro/MSCC cues ✓; 112/NA action ✓; no invented thresholds ✓ |
| **Drift** | Box titles „Alarmsymptom Schmerz“ / „Anamnese“ / „Kontraindikationen“ are mild zone chrome (not form-meta explaining diagram type; not English). Motor cue omits pinned „jede – kein Kraftgrad-≤3-Filter“ (compression, not invent). |
| **Clinical invent** | none — no Kraftgrad cut-off as “safe”, no SINS/Bilsky/Mirel, no Restharn-ml, no epidemiology on figure |
| **form_language_rule** | no meta captions of diagram type ✓ |
| **realize_path recommend** | **accept-asset** for spatial quality; hybrid later if print DPI/labels need Typst control — especially if Kraftgrad-Filter teaching line must appear on figure |
| **H-Gfx** | optional — anatomy motif (epidural mass illustration); flag for Human if production |

---

## Must-see checklist

| # | Requirement | Status |
|---|-------------|--------|
| 1 | Spine localization (Wirbel / epidural / Myelon-Kauda) | ✓ sagittal spine + labels Wirbelkörper · Myelon/Kauda · epidural |
| 2 | Red-flag pain pattern (nächtlich / ruhebetont / progredient / weckt) | ✓ card text matches pins |
| 3 | Neuro / MSCC cues from content only | ✓ neue motorische Schwäche · Gangstörung/Gangunfähigkeit · Blasen-/Mastdarmstörung |
| 4 | 112 / Notaufnahme from content | ✓ bottom banner „112 / Notaufnahme · Behandlung stoppen“ |
| 5 | No invented thresholds | ✓ |

## Pin copy-through

| zone | on figure | vs pin |
|------|-----------|--------|
| Title | MSCC · Wirbelsäulenmetastase | ✓ |
| Pain | nächtlicher / ruhebetonter Rücken- oder Knochenschmerz; weckt · progredient | ✓ (therapieresistent omitted — OK compression) |
| Context | Tumoranamnese (auch „Jahre her“) | ✓ |
| Spine | Wirbelkörper · Myelon/Kauda · epidural | ✓ |
| Motor | neue motorische Schwäche | **compressed** — missing „jede – kein Kraftgrad-≤3-Filter“ |
| Gait | Gangstörung · Gangunfähigkeit | ✓ |
| Sphincter | Blasen- / Mastdarmstörung | ✓ |
| Action | 112 / Notaufnahme · Behandlung stoppen | ✓ |
| KI | keine Belastung · keine HVT-Manipulation | ✓ |

## Invent / over-specificity risks (watch)

| risk | severity | note |
|------|----------|------|
| Single-level epidural mass drawn at mid-spine | low | Illustration, not text claim of “only this level”; content allows thorakal/lumbal |
| Missing Kraftgrad-Filter line | medium didactic | Content stress point (“kein Kraftgrad-≤3-Filter”); figure still true but weaker teaching — hybrid label if Accept needs full pin |
| Zone chrome headers | low | „Alarmsymptom Schmerz“ not exact C phrasing; not clinical invent |
| Looks like full emergency card | low | Short 112 + KI only; not III-5 protocol essay |

## Summary

| Unit | Free vision | Suggested winner path |
|------|-------------|------------------------|
| MSCC spine spatial | strong spatial + DE pins | **accept-asset** (gated H-Gfx for production anatomy); hybrid if Kraftgrad-Filter must print |

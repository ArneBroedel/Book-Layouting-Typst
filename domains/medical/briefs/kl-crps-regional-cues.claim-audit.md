# Graphic Claim Audit (Stage G2)

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-regional-cues`
- **unit_id:** U-cues
- **form_spec_path:** `domains/medical/briefs/kl-crps-regional-cues.form-spec.md`
- **vision_path / image:** `domains/medical/assets/kl-crps-regional-cues/vision-free-01.png`
- **auditor_role:** graphics
- **date:** 2026-07-30

## Verdict

**This audit:** **DRIFT**

Four-tile board + gestalt header + escape rail match Form Spec structure. Domain bullets are mostly pin-faithful but compressed; one non-pin Verlauf line and EN “Cues” in title; Untersuchung omits explicit “systemische Infektzeichen”. No invented thresholds → not FAIL. Prefer **Typst recreate** for full claim layer; free image = strong composition provenance.

## Label checklist

| on-image text (transcribe) | pin / C match? | issue |
|---|---|---|
| CRPS – Regionales Leitsymptom & Klinische Cues | partial | EN “Cues”; chrome title |
| Disproportionaler Schmerz post Trauma/OP · Typischerweise distal der Läsion | yes | gestalt |
| Anamnese bullets (Trauma/OP; disproportional; Berührung; Farb/Temp/Schwitzen/motorisch) | yes | compressed wording |
| Beobachtung bullets | yes | |
| Untersuchung: Seitenvergleich; Allodynie/Hyperalgesie; Kraft/Sensibilität; Pulse & Wundstatus | partial | missing **systemische Infektzeichen** |
| Verlauf: Tage–Wochen; Persistenz/Zunahme | yes | |
| Verlauf: „Kontinuierliche Verlaufsbewertung“ | **no** | not in C pins — remove on recreate |
| Escape: SOFORTIGE NOTFALL-RE-TRIAGE · Fieber \| eitrige Wunde \| rasche Spannungszunahme \| Pulslosigkeit | yes | good; moved to rail |

## Illustration-semantics checklist

| element | claimed meaning | visual matches? | issue |
|---|---|---|---|
| 4 tiles | domain matrix | yes | |
| Red bottom rail | emergency re-triage | yes | loud enough |
| Icons (stethoscope, eye, hammer, arrow) | decorative domain markers | yes | not teaching wrong criteria |
| Deep anatomy | forbidden | none | good |

## Structural checks

- [x] No invented numbers / doses / cut-offs
- [ ] German only — **DRIFT:** “Cues”
- [x] Escape path short and loud
- [x] Not full emergency wall for whole board
- [x] No anatomy atlas

## Action

**Realize path:** Typst cue-matrix recreate with full pins + restore systemische Infektzeichen; drop non-pin Verlauf line; DE title only. Free vision keeps hierarchy reference for Accept exploration.

## Notes

- Free gens used: 1/2 for this unit.

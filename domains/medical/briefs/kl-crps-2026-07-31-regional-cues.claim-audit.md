# Graphic Claim Audit (Stage G2) — regional cues

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-2026-07-31`
- **unit_id:** U-regional-cues
- **form_spec_path:** `domains/medical/briefs/kl-crps-2026-07-31-regional-cues.form-spec.md`
- **vision_path / image:** `domains/medical/assets/kl-crps-2026-07-31/vision-free-01.png`
- **auditor_role:** graphics
- **date:** 2026-07-31

## Verdict

**This audit:** **PASS** on `vision-refined-01.png` (Gemini Pro surgical refine) · hybrid Typst strip remains claim SoT backup

| gen | path | note |
|---|---|---|
| free-01 | `…/vision-free-01.png` | DRIFT: «Dysinttrophische…Nägelhann» |
| **refined-01** | `…/vision-refined-01.png` | surgical Gemini refine (Pro + ref file) — garbled chip **removed** |

## Label checklist (refined PNG)

| on-image text (transcribe) | pin / C match? | issue |
|---|---|---|
| Seitenvergleich | yes | — |
| Klinische Anzeichen (CRPS-betroffene Hand) | soft | OK framing |
| Disproportionaler Schmerz | yes | — |
| Allodynie (leichte Berührung) | yes | — |
| Temperatur-/Farbdifferenz | yes | — |
| Asymmetrische Schwellung | yes | — |
| Trophische Veränderungen (Haut, Nägel) ×2 | yes | nit: duplicate chip (finger tip + mid hand) — not claim fail |
| Distales regionales Muster | yes | — |
| Footer Budapest / HP Physio | yes | — |

## Illustration-semantics

| element | claimed meaning | visual matches? | issue |
|---|---|---|---|
| Dual hands L/R | side-compare | yes | strong harvest cue |
| Affected hand redder/swollen | vegetative asymmetry | yes | — |
| Touch/lightning icon near Allodynie | allodynia | yes | — |
| Thermometer icons | temp difference | yes | — |

## Structural checks

- [x] No invented numbers / doses  
- [ ] German only — yes, but **garbled invented medical word**  
- [x] Genre chrome OK (not solid-red emergency)  
- [x] Icons mostly teach criteria  
- [ ] Free refine did not complete (timeout)

## Action

| If | Then |
|---|---|
| DRIFT | **Hybrid:** free PNG composition + Typst pin strip claim SoT; do **not** sole-accept raster labels |
| FAIL path avoided | invented label is secondary chip; correct trophisch pin also present |

## Notes

- Density gate: free composition denser than prior code-only rounded boxes.  
- Code fallback `regional-cues-crps(mode: "code")` remains available.  

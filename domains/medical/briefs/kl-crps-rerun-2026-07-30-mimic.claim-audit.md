# Claim audit — `kl-crps-rerun-2026-07-30-mimic`

- **date:** 2026-07-30  
- **asset:** `domains/medical/assets/kl-crps-rerun-mimic/vision-free-01.png`  
- **form_spec:** `kl-crps-rerun-2026-07-30-mimic.form-spec.md`  
- **verdict:** **PASS** (minor meta chrome noted)

## Label check (pins)

| pin | present | notes |
|---|---|---|
| Title Trügerische Erklärungen | yes | |
| Frame 1 Normaler Heilungsschmerz | yes | |
| Danger 1 disproportional / vegetativ nicht entwarnt | yes | wording matches C intent |
| Frame 2 Psychosomatik / Überempfindlichkeit | yes | |
| Danger 2 Notfall-DDx und CRPS nicht aus | yes | |
| Frame 3 Nervenläsion / isolierte Neuropathie | yes | |
| Danger 3 kein volles regionales vegetativ-trophisches Bild | yes | |
| Frame 4 Entzündliches CRPS bei Fieber/Eiter | yes | red border emphasis |
| Danger 4 Infekt Vorrang | yes | Osteomyelitis, septische Arthritis, Wundinfekt |

## Illustration-semantics

| check | result |
|---|---|
| Peel/mask hierarchy (false frame top, danger bottom) | yes |
| Card-4 louder (Infekt priority) | yes |
| Body/limb anatomy | **none** |
| EN stage chrome | none |
| Mild form-ish labels „Trügerischer Rahmen“ / „Tatsächliche Gefahr“ | present — content-role-ish; not ontology IDs → **acceptable** for free vision; code recreate omits them |

## Invented clinical content?

No invented thresholds/doses.

## Verdict

**PASS** → hierarchy-faithful **code peel** preferred as SoT; free PNG provenance only (not accept-asset required).

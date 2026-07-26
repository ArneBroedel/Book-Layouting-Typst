# Claim audit — kl-compartment-spatial / vision-free-01

- **asset:** `domains/medical/assets/kl-compartment-spatial/vision-free-01.png`  
- **form_spec:** `kl-compartment-spatial.form-spec.md`  

## Labels vs pins

| text | verdict |
|---|---|
| disproportionaler Schmerz | PASS |
| passiver Dehnungsschmerz | PASS |
| brettharte Loge | PASS |
| Erhaltene Pulse schließen ACS nicht aus | PASS |
| nicht über Herzhöhe lagern | PASS |
| PT abbrechen · Verband lockern · Notaufnahme/Unfallchirurgie | PASS |
| Muskelkater / enger Gips bagatellisieren | PASS |

## Illustration-semantics

| element | verdict |
|---|---|
| Unterschenkel Querschnitt / Hochdruck | PASS (schematic) |
| Pulse no green-check exclude | PASS |
| Elevation ban | PASS |

## Drift

- EN stage headers („EMERGENCY CARD“, „SPATIAL ANATOMY“…）→ **DRIFT**  
- Chrome leans pure emergency poster vs illness-script teal → **DRIFT** (genre)  

## Overall (free-01)

**DRIFT** → refine German chrome.

## Post-refine (`vision-refined-01.png`)

**PASS** — DE titles; teal illness-script frame; pulse honesty; elevation ban; criteria pins.

## realize_path

**accept-asset** `vision-refined-01.png` · code `criteria-compartment-code()` fallback.

# Claim audit — kl-stroke-fast / vision-free-01

- **asset:** `domains/medical/assets/kl-stroke-fast/vision-free-01.png`  
- **form_spec:** `kl-stroke-fast.form-spec.md`  
- **date:** 2026-07-26  

## Labels

| text | pin | verdict |
|---|---|---|
| F Face/Gesicht · Mundwinkel-Asymmetrie | F | PASS |
| A Arms/Arme · Armhalteversuch | A | PASS |
| S Speech/Sprache | S | PASS |
| T Time · Notruf 112 | T action | PASS |
| FAST ≥1 → 112 | rule | PASS |
| Keine HWS / keine Verzögerung | forbidden | PASS (if present on image) |

## Illustration-semantics

| element | match? |
|---|---|
| Face droop icon | PASS |
| Arm drift | PASS |
| Speech bubble | PASS |
| T clock+112 not body part | PASS |

## Drift

- EN badge „STROKE“ / mixed chrome → **DRIFT** (refine German-only)  
- Possible form-meta „Kein Organ“ on T → **DRIFT**  

## Overall (free-01)

**DRIFT** → surgical refine applied.

## Post-refine (`vision-refined-01.png`)

**PASS** — EN chrome removed; form-meta gone; icons match F/A/S/T=Notruf.

## realize_path

**accept-asset** `vision-refined-01.png` · code `fast-stroke-code()` fallback.

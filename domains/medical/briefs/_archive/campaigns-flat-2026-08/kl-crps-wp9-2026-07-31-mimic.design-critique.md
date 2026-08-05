# Design Critique — U-mimic · WP9b

- **unit_id:** U-mimic
- **design_contract_path:** `…-mimic.design-contract.md`
- **author_role:** design-critic (DC)
- **date:** 2026-07-31
- **round:** 2 (WP9b ambition)
- **status:** **clean**

## Attack checklist

- [x] Simple alternative considered; peel stack better than map for mask/truth  
- [x] Atoms complete (incl. free vision + code SoT split)  
- [x] Colors encode meaning  
- [x] Job findable under scan  
- [x] Anti-theater: 4-col + WP9a map-as-final rejected  
- [x] Success criterion observable  

## Findings

| id | severity | class | finding | required change |
|---|---|---|---|---|
| F1 | block if violated | craft | Danger band must keep ≥7.5pt German full pins | GX + VC: auto-block microtext |
| F2 | should | claim | Free PNG is provenance only until claim audit PASS/DRIFT | claim audit before Accept |
| F3 | nit | genre | No EN chrome in free vision harvest | strip on recreate |

### Notes

- Ambition justified after Human “uninspired” on map-rows.  
- Stacked full-width peel is the allowed geometry — not re-run 4-col.  
- Zero open blocks if F1 held in realize.

## Disposition

| open blocks | open shoulds | decision |
|---|---|---|
| 0 | 0 (F2 = process step) | **clean** |

## Sign-off

- [x] Did not author Contract  
- [x] status matches findings  

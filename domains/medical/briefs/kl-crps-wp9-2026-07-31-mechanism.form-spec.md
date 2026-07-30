# Form Spec — CRPS mechanism · `kl-crps-wp9-2026-07-31`

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-wp9-2026-07-31-mechanism`
- **unit_id:** U-mechanism
- **brief_path:** `domains/medical/briefs/kl-crps-wp9-2026-07-31.brief.md`
- **design_contract_path:** `domains/medical/briefs/kl-crps-wp9-2026-07-31-mechanism.design-contract.md`
- **content_source:** C §2 Entstehung (read-only pins)
- **genre:** illness-script / lerntext (kl-kurz)
- **recipe_fn:** none (simple stack — not a library hero)
- **author_role:** media-designer (MD)
- **date:** 2026-07-31
- **ambition:** **not required** (band / quiet understand)
- **track hint (Graphics G0):** **`none`** (code simple)

## Learner context

- **Actor:** HP Physio Direktzugang  
- **Time pressure / scan budget:** ~8 s for “what goes wrong regionally”  
- **Setting:** early orientation after enabling conditions  

## Learner job (one primary)

**understand** (short causal path)

**Primary job:** Grasp that after trauma/OP a multi-pathway (entzündlich · nerval · autonom) yields **regionale Fehlregulation** with disproportionate pain — and that this label must not skip emergency DDx or ignore Chronifizierung risk.

## Load risks (if form is wrong)

- Horizontal CeTZ chain with microtext (re-run failure)  
- Learner thinks “mechanism diagram” = diagnosis certainty  
- Decorative arrows without order job  
- Emergency DDx buried under pretty geometry  

## Cognitive / layout levers

- segmenting (numbered steps)  
- signaling (Chronifizierung + DDx as distinct callouts, not extra chain nodes if that crowds)  
- contiguity (step n next to n+1 vertically)  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Title (optional) | quiet | section owned by chapter | no form-meta |
| Causal steps 1–4 | medium | trauma → pathways → regional → pain+signs | scannable list |
| Chronifizierung note | medium | untreated consequence | warning, not T1 wall |
| DDx-first note | loud-side | Infekt · Kompartment · Ischämie · TVT first | triage brake |

## Must-see elements

1. Trigger: Extremitäten-Trauma / OP  
2. Pathways: entzündlich · nerval · autonom (together, not anatomy)  
3. Outcome: regionäre Fehlregulation → disproportionaler Schmerz + Zeichen  
4. Unbehandelt: Chronifizierung + Funktionsverlust  
5. Zuerst ausschließen: Infekt · Kompartment · Ischämie · TVT  
6. German only  

## Claim pins (German, from C / content map)

| zone | allowed text |
|---|---|
| Step 1 | Extremitäten-Trauma / OP |
| Step 2 | entzündlich · nerval · autonom |
| Step 3 | Regionäre Fehlregulation |
| Step 4 | Disproportionaler Schmerz + Zeichen |
| Chroni | Unbehandelt: Chronifizierung + Funktionsverlust |
| DDx | Zuerst ausschließen: Infekt · Kompartment · Ischämie · TVT |
| Foot | Das CRPS-Label darf nicht darüber hinwegtäuschen, dass sich darunter ein Infekt, ein Kompartmentsyndrom oder ein Gefäßnotfall verbergen kann. |

## Explicit non-goals / must-not

- No limb anatomy free vision  
- No CeTZ unless Design Contract proves gain vs simple list  
- No emergency-red full page (urgency unit owns T1)  
- No form-meta captions  

## Presentation hypothesis

**Vertical numbered causal stack** + two side notes (Chronifizierung, DDx-first). Simple list wins over horizontal diagram under A4 text width.

## Success criterion

Learner can restate the 4-step path and name the DDx-first brake in one breath under scan stress.

## Simple alternative (required)

Numbered list — **chosen** (see Design Contract).

## Design Contract

- [x] linked — must be Design CLEAN before realize  

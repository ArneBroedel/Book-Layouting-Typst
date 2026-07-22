# Playbook 01 — From Form Spec (G0)

## Input

- `domains/medical/briefs/<slug>.form-spec.md` (required for ambitious units)
- Media Brief + pilot/content pins if Form Spec missing → **stop and request Media Form Spec**

## Steps

1. Open Form Spec for the unit.  
2. Confirm **ambition:** free-vision required | optional | skip.  
3. Extract:
   - Must-see list  
   - Claim pins table  
   - Genre chrome / must-not  
   - Branching invariants  
   - Success criterion  
4. Map to a **form recipe** ([09-form-recipes](09-form-recipes.md)) if it fits.  
5. Decide Visual-Unit graphic vs layout-only (`graphic_mode: none` if pure callout/table is enough).  
6. Create asset dir: `domains/medical/assets/<slug>/` + spike dir under `toolset/compose/spikes/graphics/<slug>/`.  
7. Optional: `./scripts/graphics-spike-init.sh <slug> <recipe-id>`

## Output

- Checklist in working notes or Decision Note draft “Phase A planned”  
- Recipe id chosen  

## Anti-patterns

- Inventing Form Spec as Graphics (that is Media)  
- Skipping Must-see when free-genning  

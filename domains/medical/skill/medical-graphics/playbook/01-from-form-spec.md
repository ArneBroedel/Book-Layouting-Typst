# Playbook 01 — From Form Spec (G0)

## Input

- `domains/medical/briefs/<slug>.form-spec.md` (required for ambitious units)
- Media Brief + pilot/content pins if Form Spec missing → **stop and request Media Form Spec**

## Steps

1. Open Form Spec for the unit.  
2. Confirm Media **ambition:** free-vision required | optional | skip.  
3. Extract:
   - Must-see list  
   - Claim pins table  
   - Genre chrome / must-not  
   - Branching invariants  
   - Success criterion  
4. Map to a **form recipe** ([09-form-recipes](09-form-recipes.md)) if it fits.  
5. Decide Visual-Unit graphic vs layout-only (`graphic_mode: none` if pure callout/table is enough).  
6. **Set track (mandatory, written, before any free gen):**

| Track | When | Free vision? |
|---|---|---|
| **`free-vision-ambition`** | **Default posture** for real visual units (urgency landscape, mimic, cues, discrimination graphic, peels, dashboards, criteria-by-picture, novel chrome) | **Yes** — G1 mandatory unless H-Gfx block or **documented** Human/Media skip |
| **`grammar-only`** | **Opt-in only:** pure re-pin of an **already harvested** pattern with **no** new chrome job; explicit Media/Human skip; documented time-box | **No** — do not free-gen “for show” |
| **`none`** | No graphic object | Skip G1–G4 |

**Rules (Human 2026-07-30):**

- **No** chapter-wide or genre-wide default of `grammar-only` (not for kl-kurz, not for any chapter type).  
- `free-vision-ambition` is the **normal path** for didactic graphics.  
- Agents **must still name the track** per unit (no silent free gen, no silent skip).  
- Record track in Decision Note draft Phase A and (if present) content-map ambition row.

7. Create asset dir: `domains/medical/assets/<slug>/` + spike dir under `toolset/compose/spikes/graphics/<slug>/`.  
8. Optional: `./scripts/graphics-spike-init.sh <slug> <recipe-id>` or `./scripts/bookkit graphics spike-init …`

## Output

- Checklist in working notes or Decision Note draft “Phase A planned”  
- **Track** per unit (`free-vision-ambition` | `grammar-only` | `none`)  
- Recipe id chosen  

## Anti-patterns

- Inventing Form Spec as Graphics (that is Media)  
- Skipping Must-see when free-genning  
- Silent `grammar-only` for a chapter or genre “to save time”  
- Free vision run with no track recorded  

# Playbook 01 — From Form Spec (G0)

## Input

- `domains/medical/briefs/<slug>.form-spec.md` (required for non-prose visual units)
- `…design-contract.md` + `…design-critique.md` with status **clean** (**Design CLEAN** — required)
- Media Brief + pilot/content pins if Form Spec missing → **stop and request Media Form Spec**
- If Design Critic not clean → **stop**; do not free-gen or implement (Phase D first)

## Steps

1. Open Form Spec + **Design Contract**; confirm Design Critic status **clean**.  
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

7. **`open_asset_scan` (G0b — before free gen):**

| Value | Action |
|---|---|
| **`required`** | Load skill **`open-assets`**; source scan + MANIFEST outcome `accepted`\|`gap` **before** G1. **Hard refuse** free gen / asset Accept without outcome. |
| **`optional`** | Light scan when realism/icons may help; document skip if none. |
| **`skip`** | Code/schema carrier — no MANIFEST ceremony. |

Read field from Form Spec / Design Contract (Media SoT). If empty but realism essential / third-party intent → treat as **required** until Media corrects.

8. Create asset dir: `domains/medical/assets/<slug>/` + spike dir under `toolset/compose/spikes/graphics/<slug>/`.  
9. Optional: `./scripts/graphics-spike-init.sh <slug> <recipe-id>` or `./scripts/bookkit graphics spike-init …`

## Output

- Checklist in working notes or Decision Note draft “Phase A planned”  
- **Track** per unit (`free-vision-ambition` | `grammar-only` | `none`)  
- **`open_asset_scan`** + MANIFEST path/outcome when not skip  
- Recipe id chosen  

## Anti-patterns

- Inventing Form Spec as Graphics (that is Media)  
- Skipping Must-see when free-genning  
- Silent `grammar-only` for a chapter or genre “to save time”  
- Free vision run with no track recorded  
- Free gen when `open_asset_scan=required` without MANIFEST `accepted`\|`gap`  
- Empty MANIFEST ceremony for pure code/schema units

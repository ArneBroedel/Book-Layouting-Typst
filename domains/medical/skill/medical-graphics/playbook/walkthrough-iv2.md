# Walkthrough — IV-2 S4 Entscheidungs-Flow (gold path)

End-to-end example of Form Spec → Free → Audit → Recreate → Refine → Accept → Embed.

## 1. Media — Form Spec

**File:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.form-spec.md`

- Recipe: `leitsymptom-vertical-flow`  
- Must-see: order 1–4, danger 1–2, R/I/S trio, Default-to-Danger  
- Claim pins: First-Look / RF / R·I·S / C from pilot  

## 2. Graphics G1 — Free vision

**Vision:** `…/iv2-rueckenschmerz-neuro.vision.md`  
**PNG:** `domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png`

```bash
./scripts/graphics-vision-agy.sh \
  --brief domains/medical/briefs/iv2-rueckenschmerz-neuro.vision.md \
  --out domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png
```

## 3. G2 — Claim audit

Free was largely pin-aligned (better than IV-4). Production still preferred code for maintainability.

## 4. G3 R1 — Typst recreate

**Module:** `toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ`  
**Export:** `#entscheidungs-flow-rueckenschmerz()`

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/spike-recreate.typ \
  dist/spikes/graphics/iv2-rueckenschmerz-neuro/recreate.pdf
```

## 5. G3 R3 — Refine (optional look)

**PNG:** `vision-refined-01.png` via `graphics-refine-agy.sh`  
Book palette, high-contrast chips, louder Default-to-Danger.

## 6. Decision + Accept

- `realize_path`: recreate  
- `graphic_mode`: code  
- Accept winner: `#entscheidungs-flow-rueckenschmerz()`  
- Free/refined = ideal/look provenance  

## 7. Tech embed

```typst
#import "/toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ": (
  entscheidungs-flow-rueckenschmerz,
)
#entscheidungs-flow-rueckenschmerz()
```

In: `pilots/kursbuch-welle-03/chapters/iv2.typ` (+ compose pilot).

## Takeaway

Form Spec made Must-see + pins explicit → free vision and recreate shared the same didactic contract → Accept chose maintainable code without losing protocol stress look.

# Form-catalog anti-patterns (generic)

Domain-specific medical anti-patterns may live under `domains/medical/`. This file is **platform-generic**.

1. **Cave / warning spam**  
   Using `cave` or `callout(tone: "danger")` for ordinary emphasis. Reserve warnings for safety-critical gatekeepers; prefer `memo` / `key-concept` / `clinical-pearl` for non-critical highlights.

2. **Table-default**  
   Mapping every structured intent to `styled-table` because it is easy. Compare → `comparison-table`; scores → `score-table`; protocols → `protocol-steps` — not a grey table.

3. **Double heading**  
   Emitting `= Title` after `chapter-opener(title: …)`. The opener **owns** level-1; duplicate H1 breaks TOC and rhythm.

4. **Callout-for-everything**  
   Generic `callout` where a didactic form exists (`definition`, `memo`, `summary-box`, …). Semantic boxes improve consistency and future validation.

5. **Bullet protocol**  
   Long clinical/technical SOPs as plain `-` lists with bold first words. Use **`protocol-steps`** for ordered action weight.

6. **Layout chrome in chapter body**  
   Hand-rolled `#page` margins, full-bleed `#place`, decorative `#rect` strips. Production body uses forms + BASIS; chrome belongs to `setup-pages` / curated forms.

7. **Invented form ids**  
   Writing `#my-fancy-box` or undocumented aliases in production. Only `forms.yaml` `stable` ids (plus BASIS) are legal.

8. **Silent approx without feasibility**  
   Tech replaces Media intent with a poorer form and does not record `approx` / `gap`. Catalog never learns; quality erodes.

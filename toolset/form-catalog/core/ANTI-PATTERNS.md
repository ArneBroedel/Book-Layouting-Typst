# Form-catalog anti-patterns (generic)

Domain-specific medical anti-patterns may live under `domains/medical/`. This file is **platform-generic**.

**Policy:** creative-first (`toolset/compose/CREATIVE-COMPOSE.md`). Catalog is a preferred library, not a cage.

1. **Catalog-first squeeze**  
   Opening `forms.yaml` before the Media ideal and forcing every section into `cave` + `callout` + `styled-table`. **Ideal first** — then pick or invent the realization.

2. **Cave / warning spam**  
   Using `cave` or `callout(tone: "danger")` for ordinary emphasis. Reserve warnings for safety-critical gatekeepers; prefer `memo` / `key-concept` / `clinical-pearl` for non-critical highlights.

3. **Table-default**  
   Mapping every structured intent to `styled-table` because it is easy. Compare → `comparison-table`; scores → `score-table`; linear SOPs → `protocol-steps`; **branching algorithms → flowchart / custom diagram**, not a grey table of paragraphs.

4. **Bullet protocol as fake flow**  
   Calling a tinted numbered list a “workflow” when the ideal needs branching, lanes, or a true process graph. Use diagrams or multi-path layout; fall back to `protocol-steps` only when that *is* the best form.

5. **Double heading**  
   Emitting `= Title` after `chapter-opener(title: …)`. The opener **owns** level-1.

6. **Callout-for-everything**  
   Generic `callout` where a didactic form or a custom visual pattern fits better.

7. **Box monotony**  
   Same visual rhythm every section with no design reason. Vary page structure by genre (emergency card ≠ methodik ≠ exam drill).

8. **Silent approx without feasibility**  
   Tech replaces Media intent with a poorer form and does not record `approx` / `custom` / `gap`. Quality erodes; catalog never learns.

9. **Unpinned packages**  
   Random `@preview` versions. Pin full versions for reproducibility (`typst-extension`).

10. **Claim rewrite in layout**  
    Paraphrasing Critical Claims or inventing thresholds “for readability”. Content is unantastbar.

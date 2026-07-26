# Post-Mortem — Wave-5 Ambition Raster (FAST + Kompartment)

**Date:** 2026-07-26  
**Trigger:** Human review — FAST empty/small text; compartment cross-section “absurd”

---

## 1. How were the assets actually produced?

| Asset | Claimed path | **Actual production** | Model / tool |
|-------|--------------|----------------------|--------------|
| `kl-stroke-fast/vision-free-01.png` | Free vision (agy / Nano Banana) | **`generate_image` failed (HTTP 429 quota)** → agent fell back to **Typst 0.15 + SVG export** | No raster LLM image; layout-coded Typst |
| `kl-stroke-fast/vision-refined-01.png` | Surgical refine | Refine path also **re-rendered as high-res Typst/vector dashboard** (palette polish, DE labels) — still **not** a true image-edit of a free anatomical illustration | Typst re-render, not banana refine |
| `kl-compartment-spatial/vision-free-01.png` | Free vision | Same **429 fallback → Typst** | Typst |
| `kl-compartment-spatial/vision-refined-01.png` | Surgical refine | Explicit file `generate_refined.typ` (~415 lines) compiled to PNG — **coded infographic** with a **schematic hexagon** mislabeled as “Querschnitt” | Typst code, not anatomy model |

**Contrast — what worked earlier (quality bar):**

| Asset | Production | Why better |
|-------|------------|------------|
| `kl-ces-saddle/vision-free-01.png` | **True** Nano Banana / free image gen (no quota fail) | Coherent body map, contiguity, illustration semantics |
| `kl-melanom-abcde/vision-refined-02.png` | True free gen + image refine | Surgical tile fixes on a real composition |
| Wave-5 grammar PDF | Intentional Typst | Code is the right carrier for nested T1 / mimic |

---

## 2. Why quality was disappointing

### FAST refined
1. **Wrong carrier for the job:** After quota fail, Typst produced a **dark dashboard with large icon wells** — classic empty-space failure mode (Human Phase-1 critique redux).  
2. **Text size subordinated to chrome** — decorative cards won over scan-readable DE pins.  
3. **Code cascade already solved the form** (`fast-stroke-code`) denser and clearer; free “dashboard” never beat it on Must-see density.  
4. **Agent Accept error:** DRIFT on EN was fixed, but **layout density / empty space** was not treated as fail (Accept rubric has “not box monotony” but not “empty icon wells”).

### Kompartment “Querschnitt”
1. **Not anatomy at all:** Hexagon + triangle “Tibia” + circle “Fibula” is a **diagram placeholder**, not a lower-leg cross-section. Calling it “Querschnitt” is pedagogically false.  
2. **Fallback path silently upgraded to Accept:** Claim audit checked **text pins** and pulse honesty; **illustration-semantics for anatomy fidelity** was under-enforced (icon table said “schematic PASS”).  
3. **Quota fail → agent-coded pseudo-anatomy** without human-grade anatomy check (unlike CES free vision which *looked* like a body).  
4. **Refine polished chrome (teal, DE titles) but kept the absurd figure** — surgical notes asked for DE + teal, not “redraw real cross-section.”

### Systemic
| Failure | Detail |
|---------|--------|
| Silent degrade | 429 → Typst still named `vision-free-01.png` → looked like free vision in pipeline |
| Audit blind spot | Label PASS ≠ anatomy PASS |
| Self-report bias | Generator “self-check PASS” trusted without visual inspection of cross-section quality |
| Wrong success | “compile green PNG exists” ≠ didactic spatial form |

---

## 3. What should have been done better

1. **Hard gate:** If free vision is not true image-gen, mark `carrier: code-fallback-disguised` and **do not** Accept as free vision.  
2. **Anatomy units:** Require either (a) true free vision like CES, or (b) **controlled CeTZ anatomy** with explicit compartment geometry — never hexagon placeholders.  
3. **Visual review checklist for spatial:** “Would a PT recognize a real limb section?” If no → FAIL.  
4. **FAST:** Prefer **dense code** when free vision doesn’t beat code on density; empty-space = revise.  
5. **Human expectation:** Agent should have flagged compartment figure as FAIL before Accept (self-review gap — valid Human critique).

---

## 4. Prior better experiences (reuse)

| Pattern | Lesson |
|---------|--------|
| CES / MSCC free | Real image model + spatial contiguity |
| Melanom B/D refine | Surgical image edit works when base composition is real |
| Melanom ABCDE code | Letter cascade dense, book-readable |
| US-D EN fail | Prefer code SoT when free invents chrome |

---

## 5. Corrective plan (this session)

| Unit | Action |
|------|--------|
| FAST | **Winner = code** `fast-stroke-code()` densified; free PNG demoted to provenance fail |
| Kompartment | **FAIL** hexagon assets; rebuild **CeTZ true-ish cross-section** + optional true free vision retry; Accept only if anatomy recognizable |
| System | Document silent-fallback rule in medical-graphics playbook 02/03 |

---

## 6. Apology / process ownership

The compartment figure should not have been Accept-eligible. Label audit without anatomy fidelity was insufficient. Wave-5 Accept pack is corrected accordingly.

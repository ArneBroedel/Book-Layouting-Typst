# Playbook 10 — KL chapter pipeline (one monograph end-to-end)

**When:** Starting a new Krankheitslehre monograph after the form language is harvested.  
**Skills:** `media-brief` then `medical-graphics` then Accept; Tech only after production Accept + freeze.

This is the **operator path**. Exploration provenance is not required reading.

---

## 0. Load (≤2 hops)

1. `media-brief/references/kl-illness-script-ontology.md`  
2. `media-brief/references/kl-form-space-process.md`  
3. `medical-graphics/references/kl-form-library.md`  
4. Optional why: `Guides/KL-Form-Language.md`

---

## 1. R — Content map (read-only C)

Emit `domains/medical/briefs/_waveN/<slug>.content-map.md` (or chapter folder):

- What the chapter teaches (DA job)  
- Units → ontology ids  
- TIME matrix pin-ready (T3 collapse if silent)  
- Mimic frames · SCOPE · distinctive pressure vs library  
- Ambition candidate or **skip**

**Never** rewrite claims. Missing clinical text → Author (C).

---

## 2. C — Form-Space (only if gap)

If library recipe fits → skip mini Form-Space; go transfer.  
If new unit type → ≥3 valuable + ≥2 rejected paths (see form-space process).

---

## 3. M — Brief + Form Specs

- Brief: `domains/medical/briefs/<slug>.brief.md` (`brief_class: exploration` until freeze)  
- Form Specs: urgency (+ scope), mimic if present, **ambition unit** if justified  
- Icon meaning table when criteria-by-picture  
- Transfer hygiene: new pins, no decorative bar copy from Erysipel

---

## 4. G — Realize

**Track posture (Human 2026-07-30):** no chapter-wide / kl-kurz-wide `grammar-only` default.  
Name track **per unit**; preferred default for real visual units = **`free-vision-ambition`**.

| Unit class | Default track posture | Realize |
|---|---|---|
| Urgency / discrimination / mimic / cues (visual) | **`free-vision-ambition`** | free → **harvest** → hierarchy-faithful recreate or asset |
| Novel chrome / peel / dashboard | **`free-vision-ambition`** | same |
| ABCDE / FAST criteria-by-picture | **`free-vision-ambition`** | audit semantics + harvest; code-if-equal after port |
| Flag-master / safety chrome | **`free-vision-ambition`** unless pure re-pin of harvested module | free + harvest **or** documented grammar-only transfer |
| Spatial anatomy | free vision **blocked** without H-Gfx | non-body free vision or code; H-Gfx if true anatomy |
| Conscious re-pin only (documented) | **`grammar-only` opt-in** | code pin-swap, no free gen |
| Pure prose / no graphic | `none` | skip G1 |

`grammar-only` only if: explicit Media/Human skip, pure re-pin of **already harvested** module with **no** new chrome job, or H-Gfx block → non-body alternative may be code without free vision.

Spike layout:

```text
toolset/compose/spikes/graphics/kl-<slug-or-wave>/
  lib/<slug>.typ   # or domains/medical/lib/typst/…
  spike-grammar.typ / spike-recreate.typ
```

Compile:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-…/spike-….typ \
  dist/spikes/graphics/kl-…/….pdf
```

Claim audit after any free vision (labels **and** illustration-semantics).  
**Harvest** after free vision (see template `graphic-harvest.template.md`).  
**Forbidden:** free vision → DRIFT → pin-monotone code without harvest.

### Harvest before Accept

On `free-vision-ambition`, Media Accept requires **free-vision proximity**: the winner must still feel like the free-vision job (hierarchy/rails/peel/dual-coding), not pins alone. Pin-monotone → **revise** Graphics.

---

## 5. A — Accept exploration

Template: `domains/medical/templates/accept-record.template.md`  
Exploration → production compose **no**.  
Production → also need freeze pin (content-maturity).

---

## 6. h — Mini-harvest

If a durable new pattern appeared:

1. Append `kl-form-library.md`  
2. Append playbook `09-form-recipes.md`  
3. One line in guide if invariant-level  

Do **not** leave one-offs only in exploration folders.

---

## Caps

| Loop | Max |
|------|-----|
| Free gens / ambition unit | 2 |
| Refine gens | 2 |
| Media↔Graphics | 2 then Human |
| Anatomy free vision | **H-Gfx** / Human reopen only |

---

## Related demos

| Pattern | Gold |
|---------|------|
| Standard stack | Erysipel `kl-script-system` · Gicht Wave-6 |
| Exception-T1 + mnemonic | Melanom |
| Nested multi-T1 | MI / Stroke / Anaphylaxie / LE / Sepsis |
| Flag-cluster | Sepsis Wave-6 |
| Safety chrome | Suizidalität Wave-5 |
| Spatial | CES / MSCC (compartment non-body default) |

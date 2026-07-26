# Playbook 03 — Claim audit (G2) — mandatory

## Why

Free vision is **not** claim-safe by default (IV-4 invented vitals; III-5 EN chrome).  
**Also:** text can match pins while **icons/scales contradict the meaning** (Melanom ABCDE: sharp star for *unscharf*; “5 mm” scale shorter than claim).

## Steps

1. Open template `domains/medical/templates/graphic-claim-audit.template.md`.  
2. Transcribe **every** on-image label.  
3. Match against Form Spec claim pins / pilot C.  
4. Check: invented numbers, English stage titles, broken invariants, wrong genre.  
5. **Illustration-semantics check** (mandatory when free vision depicts clinical signs, sizes, or criteria):  
   - Does each **icon / diagram element** show what its label *means*?  
   - Do **scales / size cues** match the stated threshold (e.g. *typisch > 5 mm* must not look like 2 mm)?  
   - No decorative metaphor that teaches the wrong criterion (e.g. hard zigzag ≠ unscharfe Begrenzung).  
6. Verdict:

| Verdict | Next |
|---|---|
| **PASS** | Labels **and** illustration-semantics OK → R1 recreate; optional R3 refine; asset path open if gates OK |
| **DRIFT** | EN chrome, minor wording, **or** icon/scale mismatch fixable by surgical refine → B2 notes |
| **FAIL** | Invented clinical content / thresholds → never accept-asset until fixed |

7. Record result in `*.graphics.md` (Phase A notes) or audit file.

## Illustration-semantics (icon honesty)

| Fail class | Example | Fix |
|---|---|---|
| Wrong border quality | sharp star for “unscharf” | refine: soft/feathered edge |
| Dishonest scale | label 5 mm, drawn object ≪ 5 mm | refine: reference bar shorter than object if claim is *>* |
| Wrong direction | frame←danger inverted | recreate or refine direction |
| Decorative false continuum | unlabeled color bar as “tempo” | remove or replace with readable contrast poles |

Label-only PASS with icon FAIL → overall **DRIFT** (not full PASS for accept-asset).  
**Human review** is high-value on icon units; agents should still run this check before Accept.

### Body / spatial / patho graphics (Wave-5 + Human 2026-07)

| Check | Fail if |
|-------|---------|
| Style | Figure looks like a **complete anatomy atlas cut** (implies correctness) but is AI-guess anatomy |
| Principle | Pathological idea (pressure in closed loge, saddle zone) is unclear |
| Clutter | Multi-vignette poster; extra limbs; wrong body part metaphors (e.g. headache face for loge pain) |
| Density | Empty icon wells, tiny text |

**Prefer:** coarse **principle schematic** (Typst/CeTZ or free with “flat abstract zones only”).  
**Do not Prefer:** “better photoreal anatomy” free re-rolls — errors stay; abstraction is the fix.  
True anatomy gold → H-Gfx / human asset, not unsupervised free gen.

## NEVER

- `accept-asset` on FAIL  
- Treat “looks good” / “all German labels present” as claim pass without icon check when icons teach criteria  
- Ship free vision as winner after text audit only when the unit is **criteria-by-picture** (ABCDE, spatial anatomy, scales)

## Evidence

- Eval batch: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`  
- Melanom ABCDE: free-01 → refined-02 (B soft edge, D scale honesty) · `assets/kl-melanom-abcde/`

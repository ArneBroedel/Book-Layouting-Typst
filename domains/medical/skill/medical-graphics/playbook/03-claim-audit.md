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
6. Verdict + **realize default** (depends on track):

| Verdict | Track | Default next | Forbidden |
|---|---|---|---|
| **PASS** | free-vision-ambition | R1 hierarchy-faithful recreate **and/or** R3 refine → accept-asset path | pin-monotone code as winner |
| **DRIFT** | free-vision-ambition | (1) surgical refine for labels/icons **or** (2) **recreate-with-harvest** (ports cues; fixes labels in Typst) | drop harvest; “table only”; treat DRIFT as “ignore free vision” |
| **FAIL** | free-vision-ambition | recreate from Form Spec + **non-clinical** harvest cues; **never** accept-asset free PNG | ship free PNG |
| any | grammar-only | code transfer (no free gen) | free gen theater |
| any | free-vision-ambition | harvest note **still required** (composition cues independent of verdict) | free vision with no harvest |

7. Record result in `*.graphics.md` (Phase A notes) or audit file; link `harvest_path` or `## Harvest` section.  
8. Confirm harvest **must** cues are listed even when verdict is DRIFT/FAIL (labels may fail; layout cues still usable).

## Illustration-semantics (icon honesty)

| Fail class | Example | Fix |
|---|---|---|
| Wrong border quality | sharp star for “unscharf” | refine: soft/feathered edge |
| Dishonest scale | label 5 mm, drawn object ≪ 5 mm | refine: reference bar shorter than object if claim is *>* |
| Wrong direction | frame←danger inverted | recreate or refine direction |
| Decorative false continuum | unlabeled color bar as “tempo” | remove or replace with readable contrast poles |

Label-only PASS with icon FAIL → overall **DRIFT** (not full PASS for accept-asset).  
**Human review** is high-value on icon units; agents should still run this check before Accept.

### Body / spatial / patho graphics (Human 2026-07-29)

**Default:** unsupervised anatomical depiction is **out of scope** for free vision Accept.

| Check | Action |
|-------|--------|
| Free image shows limb/cut/fascia/NV “anatomy” | **Do not accept-asset** unless Human reopened **H-Gfx** |
| Unit needs space/patho | Use **non-body** grammar (urgency, criteria text chips, mimic) |
| True anatomy required later | H-Gfx / human gold only |

Exploration series may keep demoted PNGs as **negative provenance** (what not to ship).

## NEVER

- `accept-asset` on FAIL  
- Treat DRIFT as “discard free vision composition” on ambition track  
- Treat “looks good” / “all German labels present” as claim pass without icon check when icons teach criteria  
- Ship free vision as winner after text audit only when the unit is **criteria-by-picture** (ABCDE, spatial anatomy, scales)  
- Accept pin-monotone code as ambition winner without harvest port

## Evidence

- Eval batch: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`  
- Melanom ABCDE: free-01 → refined-02 (B soft edge, D scale honesty) · `assets/kl-melanom-abcde/`

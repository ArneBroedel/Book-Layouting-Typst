# Plan — Wave: 5 monographs full process (deep analysis → best form)

**Date:** 2026-07-26  
**Track:** `devtracks/kl-form-language/`  
**brief_class:** exploration (no production compose)  
**Skills:** media-brief · medical-graphics · typst-writer · KL ontology/library/guide  

---

## 1. Goal

For **five** selected Krankheitslehre monographs (Welle-06), run the **full** form-language process with:

1. Deep **content** analysis (what C actually teaches — not surface headings)  
2. Visual option space (≥3 valuable + ≥2 rejected per ambition unit)  
3. Transfer of proven recipes + **new** ambition pilots  
4. Multiple realize/eval iterations until best form per chapter  
5. Mini-harvest of durable patterns back into library/skills  

Success = under scan stress the learner hits the right job; Accept exploration honest; system smarter than before Melanom.

---

## 2. Chapter selection (diversity matrix)

| # | Monograph (C) | Form stress | Why selected | Primary recipe bets |
|---|---------------|-------------|--------------|---------------------|
| 1 | **Myokardinfarkt** (`chapter-v-1-myokardinfarkt.md`) | Multi-T1 nested urgency + mimic | ACS library half-built; full chapter transfer | `kl-urgency-nested-t1` + discrimination + ambition optional |
| 2 | **Schlaganfall** (`chapter-v-4-schlaganfall.md`) | FAST/mnemonic + T1 wall + SCOPE | Criteria-by-picture like ABCDE | New `kl-fast-look` free vision + US stack |
| 3 | **Anaphylaxie** (`chapter-v-12-anaphylaxie.md`) | Hard stop + multi-trigger T1 + action payload | Operative density inside illness-script chrome | nested-T1 + optional protocol spine ambition |
| 4 | **Suizidalität** (`chapter-vi-4-suizidalitaet-eskalation.md`) | Chrome/safety; not decorative emergency | Genre-critical; queue from plan | Quiet-strong urgency; no sensational chrome |
| 5 | **Kompartmentsyndrom** (`chapter-v-3-kompartmentsyndrom.md`) | Spatial limb + 6P criteria + TIME | Spatial + icon-semantics | spatial free vision + exception/urgency |

**Excluded (already covered or partial):** Erysipel, Melanom, CES saddle, MSCC spine, ACS snippet only.

---

## 3. Process per chapter (R→C→M→G→A→h)

```text
R  Deep content map
   - Script 1–6 units + ontology ids
   - TIME rows present (T1–T4 collapse rules)
   - Mimic frames, NM list, cues channels
   - What is *distinctive* vs Melanom/Erysipel (delta)
   - Claim pin candidates (copy-through only)

C  Form-Space
   - Band units: transfer vs gap
   - Ambition unit: ≥3 paths + ≥2 rejected
   - Icon-meaning notes if criteria-by-picture

M  Form Specs
   - Always: U-urgency+scope (or variant)
   - Always if content has: U-mimic and/or discrimination
   - Ambition: one Form Spec with free-vision required when justified
   - Icon meaning table when icons teach criteria

G  Realize (iterate)
   Round G1: Grammar code transfer (pins) → spike PDF pages
   Round G2: Ambition free vision → claim audit (labels + illustration-semantics)
   Round G3: Surgical refine if icon DRIFT; optional A/B
   Eval gate: Must-see + success criterion + no form-meta + DE pins

A  Accept exploration
   - Per unit accept|revise|reject + carrier
   - Wishlist residual

h  Mini-harvest
   - New recipes → kl-form-library + playbook 09
   - Process deltas → guide/skills if pattern repeats
```

### Caps (respect skill)

- Free gens / ambition unit: ≤2  
- Refine gens: ≤2  
- Media↔Graphics: ≤2 then Human  
- No content rewrite; C read-only  

---

## 4. Cross-chapter campaign structure

### Phase 0 — Plan & scaffold (this file)

- Selection locked  
- Workspace dirs  
- Board file  

### Phase 1 — Deep R parallel (5 monographs)

- Full read of each C file  
- Emit `domains/medical/briefs/_wave5/<slug>.content-map.md`  
- Delta vs library  

### Phase 2 — Form-Space + Specs

- Per chapter: brief + form-space + 2–3 form specs  
- Cross-check no form-meta; icon meaning where needed  

### Phase 3 — Realize wave A (grammar)

- Modules under `toolset/compose/spikes/graphics/kl-wave5/<slug>/` or shared lib  
- Spike PDFs compile  

### Phase 4 — Realize wave B (ambition free vision)

- Vision briefs + agy free gen for each ambition unit  
- Claim audits with illustration-semantics  
- Refine loops  

### Phase 5 — Evaluation matrix

| Criterion | Weight |
|-----------|--------|
| Must-see / success criterion | high |
| Claim + icon honesty | high |
| Genre chrome | high |
| Transfer reuse quality | medium |
| Creative ambition earned | medium |
| Maintainability (code vs asset) | medium |

Internal eval + optional Human checkpoints after Phase 4.

### Phase 6 — Harvest

- Library recipes  
- System improvements (only if durable)  

---

## 5. Artifacts layout

```text
domains/medical/briefs/
  kl-wave5.board.md                 # campaign board
  kl-mi.brief.md / form-specs…      # or under _wave5/
  kl-stroke…
  kl-anaphylaxie…
  kl-suicid…
  kl-compartment…

domains/medical/briefs/_wave5/
  <slug>.content-map.md
  form-space notes if multi-file

domains/medical/assets/kl-*/        # free vision
toolset/compose/spikes/graphics/kl-wave5/
  README.md
  <slug>/lib/ + spike.typ
dist/spikes/graphics/kl-wave5/
```

---

## 6. System evolution hypotheses (test during campaign)

1. **Content-map artifact** as formal R output → reduce re-reading C  
2. **Icon-meaning** in every criteria-by-picture Form Spec (already template) — enforce in practice  
3. **Shared pin-table YAML?** (optional) — only if transfer pain appears; avoid premature tooling  
4. **Genre chrome card** for Suizidalität → may need new recipe `kl-safety-chrome`  
5. **FAST** as sibling of ABCDE (`kl-fast-look`) if free vision succeeds  

---

## 7. Order of execution

1. Scaffold board + content maps (all 5)  
2. Form-Space/Specs all 5 (Media)  
3. Grammar realize all 5 (can parallelize)  
4. Ambition free vision: priority **Schlaganfall → Kompartment → Anaphylaxie → MI (if needed) → Suizid (careful chrome)**  
5. Eval + refine  
6. Accept pack + harvest  

---

## 8. Human gates

- Exploration Accept drafts agent-side; Human may override any unit  
- Suizidalität: extra care — no sensational imagery; prefer code + quiet chrome first; free vision only if Form Spec says so and safety-safe  
- H-Gfx if anatomy free vision for compartment  

---

## Status

| Phase | Status |
|-------|--------|
| 0 Plan | **done** (this file) |
| 1 Content maps | next |
| 2 Specs | pending |
| 3 Grammar | pending |
| 4 Ambition | pending |
| 5 Eval | pending |
| 6 Harvest | pending |

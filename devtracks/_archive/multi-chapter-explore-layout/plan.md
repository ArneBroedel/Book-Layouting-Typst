# Plan — Multi-Chapter Explore Layout (Portfolio)

**Status:** **ARCHIVED 2026-08-03** · process complete · board idle · [STATUS.md](STATUS.md)  
**Phase snapshot:** 0–2 done · 3 deferred (D8) · 4a/4b done · revise wave + re-eval done 2026-08-01  
**Verification:** [verification-2026-08-01.md](verification-2026-08-01.md)  
**Retro:** [retro-2026-08-01.md](retro-2026-08-01.md)  
**Full eval:** [evaluation/](evaluation/) (rubric · inventory · agent audit · Gemini · synthesis)  
**Continuation:** [continuation-plan.md](continuation-plan.md)  
**Spec:** [spec.md](spec.md)  
**Decisions log:** [decisions.md](decisions.md)  
**Phases:** [phase0](phase0-kickoff.md) · [phase1](phase1-portfolio.md) · [phase2](phase2-wave-execution.md) · [phase3](phase3-optional-assembly.md) · [phase4](phase4-harvest.md)  
**Portfolio working list:** [portfolio.md](portfolio.md)

---

## 0. Intent (one paragraph)

Scale from **one solid chapter pilot** to a **curated multi-chapter exploration portfolio**: layout + graphics for **many but not all** Kursbuch content chapters, driven by a **durable board**, with **creative freedom per chapter** and **hard quality defaults** from design-quality + CRPS harvest — **without** full production freeze/print commitment.

---

## 1. North-star process

```text
Human portfolio pick (N chapters, genre mix)
        │
        ▼
P0  book-production-orchestrator kickoff
    book_id + board + run-log + brief_class: exploration
        │
        ▼
Per chapter (waves W0→W1→W2…):
    R  content map (short)
    M  media-brief free ideal + Form Spec/Contract for non-prose units
    D  Design Critic → Design CLEAN
    G  medical-graphics (track per unit; free vision if ambition)
    V  Visual Critic on PNG → Visual CLEAN
    A  exploration Accept
    T  compose-chapter → pilot PDF + bookkit validate
        │
        ▼
Human H-Explore (per wave)
        │
        ▼
optional P7 explore-band assembly
        │
        ▼
Harvest track → skills/guides → archive
```

**Shared with single-chapter Sit. 2:** specialist skills and quality floors.  
**Different from Sit. 2:** board, waves, portfolio, multi-session resume.  
**Different from full production book:** no mandatory H1/H2/P10/P11 for every chapter.

---

## 2. Creativity model (explicit)

| Layer | Creative freedom | Guardrail |
|---|---|---|
| Chapter ideal | Free didactic presentation goal | No claim invention |
| Ambition slot | ≥1 unit when pedagogically justified | Design CLEAN first; free vision focus rules |
| Carrier | code / hybrid / asset after audit | FAIL free → simple alternative, not blob theater |
| Grammar transfer | Reuse KL patterns with new pins | No copy of prior disease clinical text as SoT |
| Layout rhythm | Chapter-specific density | Anti-sprawl **and** anti-squish |

**Anti-monotony check (per chapter brief):** if every unit is “same stack + same mimic rows” without free ideal prose → Design Critic / Human may require wishlist or ambition rethink.

---

## 3. Quality floors (non-negotiable for shipped pilots)

From `design-quality-system` + CRPS process review:

1. Design CLEAN before free vision / realize of non-prose units  
2. Visual CLEAN on PNG before Accept (exploration included)  
3. Free vision default: **one claim**, **no labels in raster**; Typst owns pins  
4. Body/anatomy free vision paused unless H-Gfx  
5. Demotion: step down intensity — **never** decorative placeholder geometry  
6. Validate green ≠ design quality  
7. Builder ≠ sole Accept / sole Visual CLEAN  

---

## 4. Waves (default schedule)

| Wave | Scope | Exit |
|---|---|---|
| **W0** | 1–2 chapters (baseline + transfer) | H-Explore; process warm |
| **W1** | up to portfolio N (default 10 total including W0) | H-Explore; S2 progress |
| **W2** | optional expansion list | H-Explore |
| **W3+** | only if Human adds chapters in `portfolio.md` | — |

Suggested W0:

- `kl-crps-2026-07-31` as **reference baseline** (may mark board “done” if accepted; do not re-copy SoT blindly)  
- One **transfer** KL (e.g. Gicht / Kompartment / LE) clean-slate slug with date  

---

## 5. Board conventions

| Field | Value |
|---|---|
| `book_id` | e.g. `kursbuch-explore-2026-08` (Human at kickoff) |
| Path | `toolset/orchestration/book-production/<book-id>/` |
| `brief_class` | **exploration** (banner on board + kickoff) |
| `autonomy` | L1 or L2 (Human at kickoff) |
| `print_target` | screen (default) |
| Chapter slug | `<genre-or-kl>-<short>-YYYY-MM-DD` clean slate per chapter |

Per-chapter cells: content · brief · form_specs · graphics · accept · compose · pdf · notes.

---

## 6. Human load

| Gate | When | Effort |
|---|---|---|
| Kickoff | Phase 0 | Portfolio + autonomy + N |
| H-Explore | End of each wave | Sample 2–3 PDFs **or** all (decided at kickoff) |
| H-Design | Design budget exhausted | Rare |
| H-Gfx | Body raster wanted | Opt-in |
| H1/H2 | **Out of default path** | Only if promoting a chapter to production later |

---

## 7. Phase index

| Phase | File | Deliverable |
|---|---|---|
| **0** Kickoff | [phase0-kickoff.md](phase0-kickoff.md) | board, kickoff.md, autonomy, book_id |
| **1** Portfolio | [phase1-portfolio.md](phase1-portfolio.md) | locked W1 list in portfolio.md |
| **2** Wave execution | [phase2-wave-execution.md](phase2-wave-execution.md) | N pilots + run-log |
| **3** Optional assembly | [phase3-optional-assembly.md](phase3-optional-assembly.md) | explore-band PDF or skip |
| **4** Harvest | [phase4-harvest.md](phase4-harvest.md) | skills/guides + archive |

---

## 8. Exit criteria (track done)

- [x] S1–S9 from spec met (S2 N=10; S8 waived by D4 agent-only H-Explore)  
- [x] Phase 4 harvest footer written (process + eval)  
- [x] Human archive without aesthetic perfection claim (2026-08-03)  
- [x] `git mv` to `devtracks/_archive/multi-chapter-explore-layout/`  

**Note:** Residual craft (BLS/Stroke/KL shell) remains optional via regular skills; not reopened as track work.

---

## 9. Relationship to other tracks / skills

| Dependency | Use |
|---|---|
| `design-quality-system` | CLEAN floors (core complete; this track dogfooded them) |
| `book-production-orchestrator` | board runtime |
| `studio` | front door / status |
| CRPS process-review | free vision + density norms (already harvested) |
| `kl-form-language` (archived) | grammar library transfer, not content SoT |
| `chapter-form-lab` | **Different mission** (medium extremes lab); overlapping disease names ≠ same pilots |
| trilogy **T1–T3** | Control plane / open-assets wire / board quality cells — not blockers for archiving this track |

---

## 10. Post-archive guidance

1. Board `kursbuch-explore-2026-08` stays **idle** runtime provenance.  
2. Optional polish → regular skills on named pilots (no track reopen).  
3. W2 / assembly / production promote → Human charter + orchestrator, not this plan.  
4. New multi-chapter explore ops → living skill refs, not this archived folder as working memory.

---

## Harvested into

**Date:** 2026-08-01 · **Scope:** process + macro-layout lesson (not full Human aesthetic sign-off)

| Destination | What |
|---|---|
| `medical-graphics/playbook/11-visual-critique.md` | Macro layout scan-path (structure, indent, restless pages, flow) |
| `domains/medical/templates/visual-critique.template.md` | Auto-check: macro scan-path fail |
| `toolset/skill-pack/compose-chapter/SKILL.md` | Compose step 8–10 + ALWAYS: structure + density + chrome ladder |
| `book-production-orchestrator/references/autonomy.md` | L2 no premature single-chapter stop; parallel-worker note |
| `book-production-orchestrator/references/multi-chapter-explore.md` | **Ops SoT:** idle, free selectivity, SCORE, T3, workers, genre chrome |
| `book-production-orchestrator/SKILL.md` | L2 hard rule + ALWAYS portfolio idle / PNG macro |
| `kursbuch-explore-2026-08/SESSION-START.md` | Rules 10–11 (idle / macro scan-path) |
| `toolset/skill-pack/studio/SKILL.md` | Routing rules 14–15 |
| `media-brief/SKILL.md` | ALWAYS: free-skip doc · SCORE≠TIME · T3 collapse |
| `media-brief/references/kl-illness-script-ontology.md` | SCORE/CERTAINTY hygiene + invariants 11–12 |
| `media-brief/references/design-reasoning.md` | Accept: restless structure → revise compose |
| `medical-graphics/playbook/10-kl-chapter-pipeline.md` | Content-map: T3 collapse · SCORE under SCOPE |
| `phase2-wave-execution.md` | D4 vs H-Explore · DoD density/macro · content-map hygiene |
| `Guides/Medical-Graphics-Playbook.md` | Portfolio 2026-08-01 ops + density + SCORE table |
| Track | [retro-2026-08-01.md](retro-2026-08-01.md) · [evaluation/09-human-density-critique.md](evaluation/09-human-density-critique.md) |

**4a note:** process harvest only; full aesthetic eval = 4b below.

### 4b — full portfolio visual evaluation (2026-08-01)

| Destination | What |
|---|---|
| `evaluation/00-RUBRIC.md` | Full A–E criteria |
| `evaluation/01-form-inventory.md` | Forms across 10 chapters |
| `evaluation/02-agent-visual-audit.md` | Multimodal PNG + code skim |
| `evaluation/03-gemini-audit.md` | Gemini Pro + 15 PNGs |
| `evaluation/04-synthesis.md` | Ranking, patterns, revise P1–P8 |
| `evaluation/05-phase4-scope-note.md` | 4a vs 4b clarification |

**Later:** revise wave executed same day; track archived 2026-08-03 without claiming full aesthetic perfection.

## Revise wave 2026-08-01 (done)

See [evaluation/06-revise-wave.md](evaluation/06-revise-wave.md) and [evaluation/07-revise-reeval.md](evaluation/07-revise-reeval.md).

Targets: DRISC, Rücken, Kompartment, Gicht. Goals P2/P3/P7 met with residual craft debt.  
**Archive 2026-08-03:** process track closed; residual craft optional outside track.

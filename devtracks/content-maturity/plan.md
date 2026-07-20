# Plan: Content Maturity Loop

**Spec:** [spec.md](spec.md)  
**Decisions:** [decisions.md](decisions.md)  
**Gemini review:** [reviews/gemini-r1-r2-2026-07-20.md](reviews/gemini-r1-r2-2026-07-20.md)  
**Status:** **MVP implemented** (2026-07-20) · optimized after Gemini R1+R2  
**Product owner (process):** **C** — transitional scaffold in this monorepo  
**Does not own:** bookkit foundation, form-catalog core, production compose engine  

---

## Goal

Ship a **MVP v0.3** Content-Reife path that delivers real publishing value:

1. Agent-assisted **Content-Review** (Q1/Q2 lite) → Review-Report  
2. **Human Freeze** with content-addressed `content_revision`  
3. **Production gates** on B/A (`brief_class`, validate `--profile production`)  
4. **Human Proof** checklist (no agent PDF vision)  
5. Split-ready kit under `domains/content-maturity/`  

**Not in MVP:** full medical profile, imprimatur hard-gate, patch pipeline, language-proof, genre-hooks, agent PDF vision (→ **v0.4 backlog** in this plan).

---

## Path conventions (binding)

| What | Where |
|---|---|
| Process kit (transitional) | `domains/content-maturity/` |
| Skill SoT (transitional) | `domains/content-maturity/skill/content-review/` |
| Discovery symlinks only | `.github/skills/content-review`, `.grok/skills/content-review` → domain |
| A hooks | `toolset/compose/` CLI profiles + `compose-chapter` notes |
| B hooks | `media-brief` + templates (`brief_class`, freeze pin) |
| Governance | CONSENSUS v0.3 section, PRODUCT-BOUNDARIES, ROLES, AGENTS |
| Fixtures / gold | `domains/content-maturity/{fixtures,examples}/` only synthetic |
| **Forbidden** | Kursbuch-MD SoT; bookkit imports inside C process kit |

---

## Phase overview (reordered)

| Phase | Name | Deliverable | Parallel? |
|---|---|---|---|
| **0** | Foundation | Tree, OWNERSHIP, decisions locked | — |
| **1** | Revision, freeze, core artifacts | Templates + revision rules + freeze-gate + core developmental-edit | B docs note exploration class can start |
| **2** | Skill + review pipeline | `content-review` skill, claims audit, safety-flags, circuit breaker | Exploration brief docs (B) |
| **3** | Production gating A/B | validate profiles smoke/production; media-brief + compose-chapter hooks; CONSENSUS v0.3 | after freeze template exists |
| **4** | Fixtures + gold + split prep | Synthetic E2E review→freeze→(mock) production pin; split checklist; harvest prep | — |
| **B4** | Backlog v0.4+ | Medical full profile, imprimatur, patches, language-proof, genre-hooks, agent PDF proof | **not** track MVP exit |

---

## Phase 0 — Foundation

**Objective:** Split-ready folder boundary; decisions immutable for MVP.

### Tasks

- [x] Gemini R1+R2 + `decisions.md` (D1–D11)
- [x] Create `domains/content-maturity/` tree (MVP-trimmed; medical `DEFERRED.md`)
- [x] `OWNERSHIP.md` + `README.md`
- [x] Confirm open-track pointers in `devtracks/README.md`

### Exit

- Tree + OWNERSHIP/README; no content SoT; decisions.md authoritative

---

## Phase 1 — Revision, freeze, core artifacts

**Objective:** Human freeze + strong revision pins + fillable templates for MVP.

### Tasks

- [x] Document revision grammar in README: `git:<short>` | `sha256:<hex>`; reject dates
- [x] Templates (review, freeze, proof, scope + v0.4 stubs)
- [x] Core checklists (developmental-edit, claims-audit, safety-flags, freeze-gate, proof-gate)
- [x] Severity vocabulary in README

### Exit

- Freeze impossible without Human + zero `block` + valid `content_revision` format

---

## Phase 2 — Skill + review pipeline

**Objective:** Executable Content-Review for MVP depth only.

### Tasks

- [x] `skill/content-review/SKILL.md`
- [x] Symlinks `.github/skills/content-review`, `.grok/skills/content-review`
- [x] B: `brief_class` + freeze meta on media-brief (Phase 3 together)

### Exit

- Agent can produce Review-Report from fixture using skill alone

---

## Phase 3 — Production gating (A/B) + governance

**Objective:** Freeze is enforceable for production quality; smoke stays free.

### Tasks

#### A

- [x] `validate --profile smoke|production` + `--freeze` + `freeze_gate.py`
- [x] `compose-chapter` skill production pin docs
- [x] **No** medical checklist logic in validate engine

#### B

- [x] `media-brief` skill + templates: `brief_class` + freeze meta
- [x] Accept freeze pin checkboxes

#### Governance

- [x] CONSENSUS v0.3 MVP ADRs 27–36
- [x] PRODUCT-BOUNDARIES / ROLES / AGENTS linked

### Exit

- Documented + (ideally) coded production hard gate; smoke unblocked

---

## Phase 4 — Fixtures, gold path, split prep (MVP exit)

**Objective:** Prove loop without Kursbuch SoT; track closable for MVP.

### Tasks

- [x] Synthetic fixture + gold review R1/R2 + freeze + proof examples
- [x] Compose fixtures `pass_freeze_production` / `fail_freeze_production` + unit tests
- [x] `MIGRATION-TO-C.md`
- [x] SPLIT-CHECKLIST (track) still valid for MVP tree
- [x] Harvest list in plan footer

### MVP Definition of Done

- [x] Decisions D1–D11 reflected in kit + skills + gates
- [x] Gold review→freeze path reproducible
- [x] Production profile hard freeze implemented
- [x] No content SoT pollution
- [x] Split story credible
- [x] Imprimatur/full medical/patches **explicitly** backlog

---

## Backlog B4 — v0.4+ (not MVP exit)

| Item | Note |
|---|---|
| Full medical pedagogical + clinical-risk checklists | identify→verify only with Human/source policy |
| `genre-hooks.md` | after B recipe IDs stable; content questions only |
| Content-patch pipeline | **promoted partially** → track [`../agentic-adaptations/`](../agentic-adaptations/) (surgical patches) |
| Language-proof checklist | overlaps optional clarity-scan in agentic-adaptations; keep or merge later |
| Imprimatur hard state C5 | Human-only release |
| Agent PDF vision proof | only after human triage rules solid |
| Normalize content bytes before sha256 | mitigate export whitespace fragility |
| Evaluator / orchestrator / personas / checkpoints | → **[`../agentic-adaptations/`](../agentic-adaptations/)** |

---

## Suggested PR waves

| Wave | Contents |
|---|---|
| W0 | scaffold + OWNERSHIP/README |
| W1 | templates + core checklists + revision rules |
| W2 | content-review skill + symlinks |
| W3 | A/B gates + CONSENSUS v0.3 |
| W4 | fixtures/gold + migration/split + harvest prep |

Independent review after W2 and W4 recommended.

---

## Explicit non-goals (unchanged)

- Auto-merge patches into C without policy  
- Auto-heal compose from review findings  
- Medical layout recipes in C  
- Full legal/compliance product  
- Replacing author accountability  

---

## Dependencies

| Depends on | Why |
|---|---|
| CONSENSUS v0.2 Media/Tech | gates attach downstream |
| media-brief / compose-chapter | hook surfaces |
| PRODUCT-BOUNDARIES | A/B/C |

| Must not wait on | Why |
|---|---|
| Full form-catalog growth | independent |
| Real C remote | fixtures prove process |
| Full medical profile | deferred v0.4 |

---

## Harvested into

| Learning | Destination |
|---|---|
| Content-Review skill + process | `domains/content-maturity/skill/content-review/SKILL.md` |
| Templates / core checklists / gold path | `domains/content-maturity/` |
| Freeze gate CLI profiles | `toolset/compose/validate/freeze_gate.py`, `cli.py`, `runner.py` |
| media-brief production vs exploration | `domains/medical/skill/media-brief/`, templates |
| compose production pin | `toolset/skill-pack/compose-chapter/SKILL.md` |
| CONSENSUS v0.3 ADRs 27–36 | `devtracks/CONSENSUS-v0.md` |
| Migration / ownership | `domains/content-maturity/{OWNERSHIP,MIGRATION-TO-C,README}.md` |

*Archive track after Human confirms; kit stays in `domains/content-maturity/` until C split.*

---

## Change log

| Date | Note |
|---|---|
| 2026-07-20 | Track opened |
| 2026-07-20 | Optimized after Gemini R1+R2 |
| 2026-07-20 | **MVP implementation complete** (kit + gates + gold + tests) |

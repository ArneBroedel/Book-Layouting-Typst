# Plan: Content Maturity Loop

**Spec:** [spec.md](spec.md)  
**Decisions:** [decisions.md](decisions.md)  
**Gemini review:** [reviews/gemini-r1-r2-2026-07-20.md](reviews/gemini-r1-r2-2026-07-20.md)  
**Status:** open · **optimized after Gemini R1+R2 (2026-07-20)**  
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
- [ ] Create `domains/content-maturity/` tree (spec §3.2, MVP-trimmed — no full medical profile dirs required yet; stub `profiles/medical/` OK as `DEFERRED.md`)
- [ ] `OWNERSHIP.md` + `README.md` (MVP flow; not content SoT; link decisions)
- [ ] Confirm open-track pointers in `devtracks/README.md` (done at track open)

### Exit

- Tree + OWNERSHIP/README; no content SoT; decisions.md authoritative

---

## Phase 1 — Revision, freeze, core artifacts

**Objective:** Human freeze + strong revision pins + fillable templates for MVP.

### Tasks

- [ ] Document revision grammar in README: `git:<short>` | `sha256:<hex>`; reject dates
- [ ] Templates:
  - [ ] `review-report.template.md`
  - [ ] `freeze-record.template.md` (**Human** signer fields mandatory; agent `ready_for_freeze` only)
  - [ ] `proof-record.template.md` (**Human-only** fill; ≤5–8 checkboxes; link to validate report path)
  - [ ] `scope-brief.template.md` (optional C0)
  - [ ] Stub only / deferred marker: `content-patch.template.md`, `imprimatur.template.md` → v0.4
- [ ] Checklists:
  - [ ] `core/developmental-edit.md`
  - [ ] `core/claims-audit.md` (Critical Claims completeness/testability — no clinical invent)
  - [ ] `core/safety-flags.md` (flag absolute wording, missing red-flag *questions*; **never** invent doses/guidelines)
  - [ ] `core/freeze-gate.md` (0 open `block`; human sign; revision set)
  - [ ] `core/proof-gate.md` (human checklist)
  - [ ] **Defer:** `language-proof.md`, full medical pedagogical/clinical-risk, `genre-hooks.md`
- [ ] Severity vocabulary: `block` | `should` | `nit` + tags (spec)

### Exit

- Freeze impossible without Human + zero `block` + valid `content_revision` format

---

## Phase 2 — Skill + review pipeline

**Objective:** Executable Content-Review for MVP depth only.

### Tasks

- [ ] `skill/content-review/SKILL.md`
  - When / when not; boundary vs media-brief / compose-chapter
  - Process: core edit → claims audit → safety-flags → report; max 2 rounds → Human
  - ALWAYS/NEVER (no `.typ`, no claim silent-edit, no guideline invention)
  - `ready_for_freeze` recommendation only
- [ ] Symlinks `.github/skills/content-review`, `.grok/skills/content-review`
- [ ] B note (can be short PR): exploration briefs allowed with `brief_class: exploration` (full template edit may land Phase 3)

### Exit

- Agent can produce Review-Report from fixture using skill alone

---

## Phase 3 — Production gating (A/B) + governance

**Objective:** Freeze is enforceable for production quality; smoke stays free.

### Tasks

#### A

- [ ] `run_validate.py` / compose docs: `--profile smoke|production` (or equivalent flags)
  - smoke: current EXCEPTION paths OK; freeze **not** required
  - production: hard fail without freeze record + `content_revision` pin match on chapter header/content
- [ ] `compose-chapter` skill: production expects freeze pin; header `// content_revision: git:…|sha256:…`
- [ ] **No** medical checklist logic in validate engine

#### B

- [ ] `media-brief` skill + templates: `brief_class: production|exploration`; production requires freeze meta
- [ ] Accept: production compose not authorized from exploration brief

#### Governance

- [ ] CONSENSUS v0.3 block (ADRs from decisions / Gemini R2 ADR-01…05 + role Content-Review)
- [ ] PRODUCT-BOUNDARIES / ROLES / AGENTS already partially linked — align to MVP wording

### Exit

- Documented + (ideally) coded production hard gate; smoke unblocked

---

## Phase 4 — Fixtures, gold path, split prep (MVP exit)

**Objective:** Prove loop without Kursbuch SoT; track closable for MVP.

### Tasks

- [ ] Synthetic fixture chapter (DE, fictional, safe) with intentional structure + soft-claim + absolute-wording issues
- [ ] Gold: Review-Report + Freeze-Record (human-sign fields filled as example)
- [ ] Optional: mock production pin note (how A would check hash)
- [ ] Human spot-check: report must **not** invent clinical guidelines (fixture exit criterion from Gemini)
- [ ] `MIGRATION-TO-C.md` short steps
- [ ] `SPLIT-CHECKLIST.md` updated for MVP tree
- [ ] Harvest list draft in plan footer

### MVP Definition of Done

- [ ] Decisions D1–D11 reflected in kit + skills + gates
- [ ] Gold review→freeze path reproducible
- [ ] Production profile documents hard freeze (implemented or tracked deferred-only if Human blocks A CLI — prefer implement)
- [ ] No content SoT pollution
- [ ] Split story credible
- [ ] Imprimatur/full medical/patches **explicitly** backlog, not silent missing

---

## Backlog B4 — v0.4+ (not MVP exit)

| Item | Note |
|---|---|
| Full medical pedagogical + clinical-risk checklists | identify→verify only with Human/source policy |
| `genre-hooks.md` | after B recipe IDs stable; content questions only |
| Content-patch pipeline | still no silent SoT merge |
| Language-proof checklist | cheap automation candidate |
| Imprimatur hard state C5 | Human-only release |
| Agent PDF vision proof | only after human triage rules solid |
| Normalize content bytes before sha256 | mitigate export whitespace fragility |

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

*(fill at MVP completion)*

| Learning | Destination |
|---|---|
| — | — |

---

## Change log

| Date | Note |
|---|---|
| 2026-07-20 | Track opened |
| 2026-07-20 | **Optimized after Gemini R1+R2:** MVP slice, phased reorder, decisions.md, backlog v0.4 |

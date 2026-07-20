# Spec: Agentic Adaptations — Genesis-Lektionen für unseren Verlagstack

**Status:** MVP implemented (2026-07-20) · **Track-ID:** `agentic-adaptations`  
**Date opened:** 2026-07-20  
**Origin:** Vergleich book-genesis (LobeHub / PhilipStark pipeline) vs. CONSENSUS A/B/C + content-maturity MVP  
**Governing:** [`../CONSENSUS-v0.md`](../CONSENSUS-v0.md) · [`../PRODUCT-BOUNDARIES.md`](../PRODUCT-BOUNDARIES.md) · [`../content-maturity/`](../content-maturity/)  
**Does not supersede:** content-maturity MVP (v0.3) — **extends** it and light A/B UX

---

## 1. Objective

Die **sinnvollen** Muster aus generativen Buch-Pipelines (unabhängige Bewertung, Floor-Gates,
chirurgische Nacharbeit, Orchestrator-Phasen, Lernenden-Perspektive, sichtbare Checkpoints,
Klarheits-Scan) in unser System **übernehmen — adaptiert**, ohne die falschen Muster
(Autonomie-Rewrite, Score-bis-9.0, Monolith-Skill, Content-aus-einem-Satz).

Ergebnis: implementierbare Erweiterungen unter **Produkt C** (process kit) und **minimale**
A/B-Hooks (Sichtbarkeit, Docs, optional CLI-Hinweise) — split-ready, claim-safe, domain-agnostische A-Engine.

---

## 2. Problem statement

content-maturity MVP liefert:

- Content-Review (core) → Human Freeze → production validate freeze-gate → Human Proof  

Lücken relativ zu „guten“ Genesis-Ideen (nicht relativ zu Genesis als Produkt):

| Lücke | Wirkung |
|---|---|
| Review oft = derselbe Agent-Lauf, der auch „hilft“ | weniger unabhängige Kritik |
| Floor-Semantik nur implizit in Checklisten | Operatoren sehen „ein Block blockiert alles“ nicht als Produktprinzip |
| Patches / gezielte Nacharbeit nur Stub v0.4 | Autor bekommt Prosa-Findings ohne chirurgisches Artefakt |
| Kein dünner Orchestrator C0–C5 | Agenten springen Phasen / Skills |
| Keine Lernenden-Persona | Didaktik-Review bleibt abstrakt |
| Checkpoints in Skills verstreut | Human Moments schwer zu „sehen“ |
| Kein optionaler DE-Lehrtext-Klarheits-Scan | Nominalstil/Passiv/Füllfloskeln unsystematisch |

---

## 3. Adoption matrix (binding)

Vollständige Matrix: [`adoption-matrix.md`](adoption-matrix.md).

### 3.1 Adapt (in scope this track)

| ID | Genesis-Idee | Unsere Form |
|---|---|---|
| **A1** | Independent evaluator (schreibt nicht) | Mode / optional 2nd pass: **findings-only**; no patch drafting in same pass |
| **A2** | Floor = score | **Floor-Semantik** dokumentieren + Review-Report Summary: `floor_status` (any `block` → not ready) |
| **A3** | Surgical edit | Activate **content-patch** pipeline (v0.4 item promoted): one finding → one patch proposal; author merge only |
| **A4** | Orchestrator phases | Skill **`content-orchestrator`** (thin): C1–C4 route to right skill/artifact; no content rewrite |
| **A5** | Beta-reader simulation | Checklist **`learner-persona.md`** (didactic personas, not literary beta) |
| **A6** | Checkpoint UX | Single **`checkpoints.md`** + optional validate/CLI banner; Media Accept freeze visibility already partial |
| **A7** | Anti-AI prose scan | Optional checklist **`clarity-scan-de.md`** (Lehrtext-Klarheit, not fiction chaos) |

### 3.2 Reject (explicit non-goals)

| ID | Genesis-Idee | Warum reject |
|---|---|---|
| **R1** | Idea → full manuscript generation | Content SoT = C expert; not A/B duty |
| **R2** | Auto-revision loops until score ≥ N | Violates no-auto-heal / claim integrity |
| **R3** | Chaos engine / controlled imperfection in body | Wrong for safety-critical didactic text |
| **R4** | Genesis Score / CVI as release metric | Wrong axes (literary/commercial vs Q1–Q3) |
| **R5** | 8+ specialized agents in one monolith | CONSENSUS: few roles, artifacts, caps |
| **R6** | Marketing package (query letter, comps) as platform | Out of A/B; optional later in pure C marketing |
| **R7** | Self-contained “one skill does the whole book” | Breaks product boundaries |

### 3.3 Already have (document, don’t reimplement)

| Pattern | Where |
|---|---|
| Circuit breaker max 2 rounds | content-maturity D8 |
| Human-only freeze | D1 |
| Production vs smoke profiles | D3 / freeze_gate |
| Explore-then-constrain Media | media-brief |
| Independent Media Accept vs Tech compose | CONSENSUS |

---

## 4. Product placement

| Deliverable | Product | Path (transitional) |
|---|---|---|
| content-orchestrator skill | C | `domains/content-maturity/skill/content-orchestrator/` |
| evaluator / findings-only mode in content-review | C | extend `skill/content-review/SKILL.md` |
| learner-persona + clarity-scan checklists | C | `checklists/core/` |
| content-patch templates + procedure | C | templates + skill section (promote from stub) |
| checkpoints.md (Human moments map) | C (+ link from A/B skills) | `domains/content-maturity/checkpoints.md` |
| Optional CLI hint / report footer for next checkpoint | A | compose validate report meta only — **no** medical logic |
| brief_class / freeze already | B | only doc cross-links if needed |

**Never:** bookkit foundation changes for literary scores; form-catalog ids for “prose quality”.

---

## 5. Functional specs per adaptation

### 5.1 A1 — Independent evaluator mode

**Goal:** Separate “judge” from “rewrite helper”.

**Behavior:**

1. Default Content-Review may recommend and list findings (as today).  
2. New explicit mode **`pass: evaluate-only`** (or skill flag in report meta):
   - MUST fill findings, claims audit, safety-flags, ready_for_freeze  
   - MUST NOT draft Before/After patches or rewritten body paragraphs  
3. Optional **second agent invocation** after author edits: evaluate-only only.  
4. Skill text: if same session did patches last turn, switch skill mode or new report file `review-roundN.evaluate.md`.

**Acceptance:** Gold example shows evaluate-only report with zero patch bodies.

### 5.2 A2 — Floor semantics

**Goal:** Make “weakest link” product language explicit (Genesis floor-score analogue without numeric theater).

**Rules:**

- `ready_for_freeze: yes` only if `block_count == 0`  
- Report meta:

```yaml
floor_status: clear | blocked
block_count: N
should_count: N
nit_count: N
```

- Freeze-gate checklist already requires 0 blocks — cross-link floor language in README + freeze-gate.md  
- **No** weighted average of severities; no 0–10 scores in MVP of this track

**Acceptance:** Template + skill enforce floor fields; gold freeze only from `floor_status: clear`.

### 5.3 A3 — Surgical content patches

**Goal:** Author gets **minimal diffs**, not full-chapter rewrites.

**Behavior:**

1. Promote `content-patch.template.md` from deferred stub to **active** for `should`/`block` findings when author requests or orchestrator selects `pass: review-with-patches`.  
2. One patch file **or** one section per finding_id (`F1`, `F2`, …).  
3. Status machine: `proposed` → `accepted_by_author` | `rejected` | `deferred`.  
4. Agent **never** applies patch to SoT without Human/Author policy (unchanged ADR).  
5. Evaluate-only pass after merges (A1).

**Out:** Auto-apply loops; patching layout `.typ`.

**Acceptance:** ≥1 gold patch for demo fixture finding; skill procedure documented.

### 5.4 A4 — content-orchestrator skill

**Goal:** Thin router, not a second god-agent.

**Skill `content-orchestrator`:**

| Input state | Next action |
|---|---|
| no review / draft | run or point to `content-review` |
| review with blocks | author triage; max round check |
| ready_for_freeze yes, no freeze file | Human freeze template |
| frozen, no production brief | handoff note to `media-brief` (do not write brief body unless user asks Media role) |
| composed PDF, no proof | Human proof template |
| round > 2 open | **stop** → Human triage |

**MUST NOT:** write `.typ`, rewrite claims, invent media ideal when only orchestrating, run production compose.

**Acceptance:** SKILL.md + discovery symlink; gold “route card” example for demo chapter.

### 5.5 A5 — Learner persona checklist

**Goal:** Didactic “beta readers” without fiction simulation theater.

**File:** `checklists/core/learner-persona.md`

Personas (fixed small set, DE Lehrkontext):

| Persona | Lens |
|---|---|
| **P1 Erstleser:in unter Zeitdruck** | 30–60s: Was muss ich *jetzt* tun/wissen? |
| **P2 Prüfungsvorbereiter:in** | Lernziele abgedeckt? Prüfbare Aussagen? |
| **P3 Wiedereinsteiger:in** | Jargon erklärt? progressive disclosure? |

Each persona → 3–5 checkbox questions → findings tagged `didaktik` (+ optional `persona:P1`).

**Not:** five literary taste profiles; not market comps.

**Acceptance:** Checklist + content-review process step (optional flag `include_personas: true`, default **on** for medical profile later / **on** for core in this track unless too heavy — **default on** for agentic-adaptations).

### 5.6 A6 — Checkpoint UX

**Goal:** One map of Human moments across C/B/A.

**Artifact:** `domains/content-maturity/checkpoints.md`

| ID | Moment | Owner | Blocks without |
|---|---|---|---|
| H1 | Freeze sign-off | Human C | production brief/compose quality |
| H2 | Media Accept (production) | Media + freeze pin | compose |
| H3 | C2 circuit breaker after 2 rounds | Human C | endless review |
| H4 | Proof after PDF | Human C | imprimatur / release (v0.4) |
| H5 | Imprimatur | Human C | v0.4 print release |

**A hook (minimal):** validate report footer when production fails freeze:

```text
next_checkpoint: H1 Freeze — see domains/content-maturity/checkpoints.md
```

**B hook:** media-brief skill links H1/H2.

**Acceptance:** checkpoints.md + links from content-review, content-orchestrator, compose-chapter, media-brief; optional freeze-gate message enhancement.

### 5.7 A7 — German didactic clarity scan

**Goal:** Optional anti-slop for **Lehrtext**, not fiction chaos.

**File:** `checklists/core/clarity-scan-de.md`

Patterns to **flag** (not auto-rewrite):

- stacked nominalizations / Behördenstil without need  
- empty intensifiers (“besonders wichtig ist, dass…”) without payload  
- passive where actor/action must be clear for learners  
- synonym churn for the same clinical term (→ konsistenz)  
- paragraph without claim/action for gatekeeper-like sections  

Severity default: `nit` or `should`; never invent clinical content to “fix” style.

**Out:** Chaos engine; adverb lists from English MFA blogs as hard rules.

**Acceptance:** Checklist + optional step in content-review (`include_clarity_scan: true`, default **off** in first ship, **on** in gold demo once — plan chooses **default off**, available always).

---

## 6. Artifact contracts (new / extended)

### 6.1 Review Report meta (extend)

```yaml
pass: evaluate-only | review-with-patches | standard
floor_status: clear | blocked
block_count: 0
include_personas: true|false
include_clarity_scan: true|false
```

### 6.2 Content Patch (active)

As template; required fields: `finding_id`, `location`, `before`, `after`, `rationale`, `status`.

### 6.3 Route card (orchestrator output)

Short markdown:

```markdown
# Route card
- content_status: …
- round: …
- floor_status: …
- next_skill: content-review | human-freeze | media-brief | compose-chapter | human-proof
- next_artifact: path
- stop_reason: (if any)
```

---

## 7. Alignment with existing ADRs

**Retain all** content-maturity D1–D11 and CONSENSUS no-auto-heal / no claim paraphrase / A/B/C split.

**New ADRs (propose for CONSENSUS when landing):**

37. **Evaluate-only pass** is first-class; patch drafting is optional and never silent-merged.  
38. **Floor semantics:** any `block` ⇒ not freeze-ready; no numeric vanity scores as release gates.  
39. **content-orchestrator** routes only; does not replace Media/Tech skills.  
40. **Learner personas** are didactic checklists, not literary beta panels.  
41. **Clarity scan** is optional flag/ask; never auto-rewrites SoT.  
42. **Rejected Genesis patterns** R1–R7 remain rejected.

---

## 8. Scope

### In

- Spec/plan/matrix; C kit extensions; skill updates; discovery symlinks  
- Gold examples on existing demo-anaphylaxis-lite (or extension)  
- Minimal A validate message for next checkpoint  
- B/A skill cross-links  
- CONSENSUS short v0.3.1 / ADR 37–42 block  

### Out

- Full medical clinical-risk profile (still content-maturity B4)  
- Imprimatur hard gate implementation (content-maturity B4)  
- Agent PDF vision  
- Literary Genesis Score engine  
- Marketing/query-letter skills  
- Auto-heal compose  

---

## 9. Acceptance criteria (track done)

1. adoption-matrix.md + this spec accepted.  
2. A1–A7 implemented per functional specs (A7 default off OK if checklist+skill wire exist).  
3. content-orchestrator skill + symlink.  
4. content-review skill documents evaluate-only, floor, personas, clarity flag, patches.  
5. Gold path updated: evaluate-only report and/or surgical patch + route card.  
6. checkpoints.md + skill links; freeze-gate or validate mentions H1 on production fail.  
7. CONSENSUS ADR 37–42 (or additive doc linked).  
8. No R1–R7 patterns introduced.  
9. Split-ready: all new C process under `domains/content-maturity/`.  
10. Harvest footer before archive.

---

## 10. Risks

| Risk | Mitigation |
|---|---|
| Orchestrator becomes god-agent | Strict MUST NOT; only route cards |
| Personas become fiction beta | Fixed 3 didactic lenses only |
| Clarity scan → silent rewrite | Flag only; patches explicit A3 |
| Patch spam | Only for block/should; nits optional |
| Scope creep into medical v0.4 | Keep medical DEFERRED; personas generic |

---

## 11. Success metrics

| Metric | Target |
|---|---|
| Evaluate-only gold | exists, no patch sections |
| Floor fields | always in new reviews |
| Orchestrator route card | produces correct next_skill on fixture states |
| Checkpoint discoverability | H1–H4 linked from ≥3 skills |
| Reject list | documented; no score engine in repo |

---

## 12. Related

| Resource | Path |
|---|---|
| content-maturity kit | `domains/content-maturity/` |
| content-maturity track | `devtracks/content-maturity/` |
| Comparison discussion | conversation 2026-07-20 (book-genesis) |
| media-brief / compose-chapter | domain + toolset skill-pack |

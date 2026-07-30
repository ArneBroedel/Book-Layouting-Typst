# Plan — Design-Quality System (adversarial · atom-justified · visual-loop · pre-Human clean)

**Status:** P1–P2 + WP7 + WP9 unit pilot done (Human approved 2026-07-30; defaults D1–D4 locked)  
**Trigger:** CRPS re-run: pipeline artifacts complete, product quality failing (bad form choices, unmotivated color, **Typst source leaking into PDF**, agent self-Accept without visual read)  
**Scope:** Produkt **B** (media-brief + medical-graphics) · thin wires to **A** (compose, validate, studio, book-production) · **C** Human gates unchanged for freeze/proof  
**Not this plan:** rewrite clinical content; auto-heal claims; fold medical genre into `packages/bookkit`

---

## 0. Diagnosis (why the prepared process still produced junk)

The current system optimizes for **pipeline completeness and claim safety**, not for **reader-facing design quality under adversarial pressure**.

| What worked | What failed on CRPS re-run |
|---|---|
| Role split Media / Graphics / Tech | Single-voice ideal → single-voice Accept |
| Form Spec + free-vision-harvest policy | Harvest ports chrome; does not ask “is this better than a list?” |
| Claim audit (labels + icons) | No craft audit (overflow, code leak, arbitrary color) |
| Caps + validate green | Green compile **with** raw Typst text on page 3 |
| L2 “drive to PDF” | Self-Accept exploration without PNG eyes |
| P9 visual QA (full book) | Too late; one-chapter L2 never hits real P9 bar |

**Root cause (one line):** There is no **expert design council** with **mandatory critique loops on the ideal**, **atom-level justification**, and **visual realize loops that must reach “nothing left to attack” before Human** — only checklists that an implementing agent can self-tick.

**Quality bar the user requires (non-negotiable for this overhaul):**

1. Every presentation is **thought through** (not library dump).  
2. Every decision is **justified** (form, sequence, arrow, color, weight, chrome).  
3. Justification is grounded in **media design** + **medical pedagogy**.  
4. Every visual atom must **help process the content** (no decoration theater).  
5. Ideal design is itself **critically iterated** (designer ↔ challenger).  
6. Realization is **critically iterated** (how: code/raster/hybrid) then **built**.  
7. Result is **visually inspected** with **harsh, concrete feedback**.  
8. Loop until **nothing material remains** → only then Human.  
9. Handing Human a suboptimal result is a **process failure** (not “exploration OK”).

---

## 1. North-star process (target architecture)

```text
                    C content (read-only pins)
                              │
         ┌────────────────────▼────────────────────┐
         │  PHASE D — DESIGN COUNCIL (ideal)        │
         │  D1 Design draft (Form Spec + rationale) │
         │  D2 Adversarial critique (atom-level)    │
         │  D3 Revise ideal                         │
         │     loop until Critique = CLEAN          │
         └────────────────────┬────────────────────┘
                              │ locked Design Contract
         ┌────────────────────▼────────────────────┐
         │  PHASE R — REALIZE COUNCIL               │
         │  R0 Track + carrier strategy (justified) │
         │  R1 Free vision (if ambition) + harvest  │
         │  R2 Claim audit (safety)                 │
         │  R3 Craft implement (code/hybrid/asset)  │
         │  R4 Visual critique on PNG/PDF pages     │
         │  R5 Fix → re-export → re-critique        │
         │     loop until Visual Critique = CLEAN   │
         └────────────────────┬────────────────────┘
                              │ Pre-Human Quality Packet
         ┌────────────────────▼────────────────────┐
         │  PHASE A — ACCEPT (Media, non-builder)   │
         │  Only after D-CLEAN + R-CLEAN            │
         │  Human H2 (prod) / Human explore gate    │
         └────────────────────┬────────────────────┘
                              │
                         Tech embed + validate
```

**Hard rule:** Builder may not mark CLEAN on their own work.  
**Hard rule:** No Accept (even exploration) without **Visual Critique CLEAN** + page PNGs attached.  
**Hard rule:** “Validate OK” is never a substitute for Visual Critique.

---

## 2. Expert roles (virtual team — same session or multi-agent)

Roles are **procedure roles** (can be separate subagents or forced persona switches). They must leave **named artifacts**. One physical agent may play only **one role per step** (no “I designed and I approved”).

| Role ID | Name | Duty | Must not |
|---|---|---|---|
| **MD** | Media Designer | Best didactic presentation; Form Spec; Design Contract | Realize production graphics; Accept own work |
| **DC** | Design Critic (adversarial) | Attack every atom; demand justification; block unclean design | Soften to ship; invent claims; write production `.typ` |
| **GX** | Graphics Realizer | Track, free vision, claim audit, harvest, implement | Own Design Contract; self-CLEAN visual |
| **VC** | Visual Critic | Read **PNG/PDF pages**; craft + pedagogy defects; block | Approve without opening images |
| **AX** | Accepting Media | Final Accept only on CLEAN packets; exploration vs production | Build the units they accept |
| **TC** | Tech Compose | Embed Accept winners; chapter assembly | Re-author ideal; fix design by monotony |
| **H** | Human | H1 freeze, production H2, H-Gfx, optional explore gate | Receive unclean agent packets as “done” |

**Council quorum for CLEAN:**

| Phase | CLEAN requires |
|---|---|
| Design (D) | MD draft + **DC** status `clean` (or `clean-with-waivers` Human-only) |
| Realize (R) | GX implement + **VC** status `clean` after latest PNG set |
| Accept (A) | AX checklist pass + Design CLEAN + Visual CLEAN artifacts linked |

---

## 3. What every decision must justify (Visual Atom Contract)

New mandatory artifact layer: **Design Contract** (per visual unit, or chapter multi-unit with headed sections).

### 3.1 Content of Design Contract

Extends Form Spec; does **not** replace claim pins.

| Section | Required content |
|---|---|
| **Learner job** | one primary job (stop / recognize / choose / …) |
| **Simple alternative** | What is the **boring** form (list, prose, 2-col table)? |
| **Why not simple** | Why that fails under scan/genre stress — or **choose simple** |
| **Form choice** | pattern name + 2–4 sentences medical-pedagogy + media-design |
| **Sequence / reading order** | numbered scan path (1→2→3) under time pressure |
| **Atom table** | every non-trivial visual decision (see 3.2) |
| **Must-see** | unchanged from Form Spec |
| **Anti-theater** | list of chrome **rejected** (circles, colors, icons that don’t teach) |
| **Success criterion** | how a critic knows it worked (observable) |
| **Risk of wrong form** | what learner error the bad form causes |

### 3.2 Atom table (minimum columns)

| atom_id | element (color / arrow / zone / type size / border / badge / grid / hub / peel / …) | what it encodes for the learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|

**Rules:**

- No atom without a row (including “Untersuchung is orange”).  
- Color **must** map to meaning (urgency / emphasis / genre chrome) — never “variety”.  
- Diagrams (chains, hubs, cycles) must state **why geometry beats a list**; default bias: **simple wins if ≈ equal teaching**.  
- Arrows only if order/causality is the job; else list/stack.  
- “Looks like library module X” is **not** a justification.

### 3.3 Design Critic attack checklist (DC)

Severity: `block` | `should` | `nit` (mirror content-review language).

| Attack class | Examples |
|---|---|
| **Unjustified chrome** | orange row, red border, hub, cycle, peel without atom row |
| **Worse than simple** | chain less readable than list; hub duplicates table |
| **Meaningless dual coding** | color that contradicts urgency semantics |
| **Scan failure** | primary job not findable in first screenful |
| **Claim risk** | invented emphasis implying clinical priority without pin |
| **Genre mismatch** | emergency red on framework OS; monotony dump |
| **Missing rejection** | no “why not list” / no anti-theater list |

**CLEAN** only if: zero open `block`, all `should` resolved or Human-waived, atom table complete for every non-default element.

---

## 4. Phase D — Design iteration (before free vision / Typst)

### D1 — Media Designer draft
- Brief section plan + Form Spec (existing)  
- **+ Design Contract** (new) for every unit that is not pure prose  
- Explicit: for “light” units, Contract may choose **simple form** and stop (honest)

### D2 — Design Critic pass (mandatory, separate step)
- Artifact: `*.design-critique.md` (new template)  
- Method: attack Contract + Form Spec; do **not** implement  
- Output: findings table + status `revise` | `clean`

### D3 — Revise loop
- MD revises Contract/Spec answering each finding  
- Cap: **quality floor**, not “ship after 2”. Budget: max **N design rounds** (recommend **4**) then **Human design gate** (new optional **H-Design**) if still unclean  
- **Forbidden:** skip to free vision with open `block` findings

### Design CLEAN packet
```text
form-spec.md + design-contract.md + design-critique.md (status: clean)
```

---

## 5. Phase R — Realize iteration (build + eyes)

Reuse free-vision-harvest stack; **add** craft/visual council around it.

### R0 — Carrier strategy (justified)
- Track: `free-vision-ambition` | `grammar-only` | `none` (existing)  
- Carrier bias still: code if ≈ equal after harvest (D4 harvest)  
- **New:** written “why free vision / why not” against Design Contract (not habit)

### R1 — Free vision (if track)
- Existing vision brief + gen caps (2 free)  
- Harvest (existing) **must map to atom table** — new harvest cues cannot invent uncontracted chrome without reopening Design phase

### R2 — Claim audit
- Existing PASS/DRIFT/FAIL — **safety only**, not craft CLEAN

### R3 — Implement
- Hierarchy-faithful recreate / hybrid / refine (existing ladder)  
- **New DoD:** typst craft checklist (no content-mode code leak; text fits; contrast; German; spacing)

### R4 — Visual Critique (mandatory, separate role VC)
- **Always** export PNG pages (`typst … --format png --ppi 150–200`) of **every page** that shows the unit **and** the chapter context if embedded  
- Artifact: `*.visual-critique.md`  
- Critic **must** open images (procedure: list page paths + defects with coordinates/description)  
- Severity `block` / `should` / `nit`  
- **Auto-block patterns** (examples):  
  - Raw code/markup visible  
  - Text overflow / collision / cut-off  
  - Uncontracted color emphasis  
  - Diagram less clear than stated simple alternative  
  - Pin-monotone on ambition track  
  - Duplicate competing presentations without role split  

### R5 — Fix loop
- GX fixes → recompile → **new PNG set** → VC re-pass  
- Gen caps for AI images remain; **code/layout polish rounds** budgeted separately (recommend max **5 visual rounds** / unit, then H-Design or Human)  
- CLEAN only on latest PNG set + zero open blocks

### Realize CLEAN packet
```text
graphics.md + harvest + claim audit + visual-critique.md (clean)
+ page PNG paths + spike/chapter PDF paths
```

---

## 6. Phase A — Accept and Human

### 6.1 Agent Accept (AX) — not the builder
- Accept only if Design CLEAN + Visual CLEAN linked  
- Expand Accept template: links to critique artifacts; “pages inspected” checklist  
- **Ban:** exploration Accept by the same agent turn that wrote `crps-rerun.typ` without a forced role switch + visual critique file  
- Studio: **L2 may not self-close quality Accept** for didactic chapters; L2 drives **between** Design CLEAN / Visual CLEAN / Human gates only

### 6.2 Human gates (extend checkpoints)

| Gate | When | Without it you must not… |
|---|---|---|
| **H-Design** (new, optional default **on** for heavy graphics / exploration pilots that will be judged as quality) | Design not CLEAN after budget **or** always before free vision for ambition chapters | free vision / realize of unclean Contract |
| **H2** production Accept | unchanged + freeze | production compose |
| **H-Explore** (new name or policy) | Exploration quality bar when Human wants pilot quality | call exploration PDF “done” / “good” |
| **H-Gfx** | anatomy risk | accept-asset anatomy |

**Policy choice (recommend default for studio didactic work):**  
Exploration still allows draft content, but **does not allow dirty visual product**. Exploration ≠ permission for code-in-PDF or unjustified chrome.

### 6.3 Pre-Human standard
Packet to Human must include:

1. Design Contract + DC clean  
2. Visual Critique clean + **PNG thumbnails/paths**  
3. Short “what we rejected” list  
4. Accept draft recommendation  

If Human finds a `block`-class issue, that is a **process incident** → root-cause into skills (eval case), not “Human is the polish loop by default”.

---

## 7. What we keep and build on (reuse map)

### Keep almost as-is (foundation)

| Asset | Path | Reuse as |
|---|---|---|
| Creative-first policy | `toolset/compose/CREATIVE-COMPOSE.md` | Ideal still first; add “ideal must survive critique” |
| Role split A/B/C | `PRODUCT-BOUNDARIES.md` | Council stays in B; Tech embeds |
| Form Spec template + guide | `form-spec.template.md`, `Guides/Medical-Presentation-Forms.md` | Base for Design Contract |
| design-reasoning unit→hypothesis | `media-brief/references/design-reasoning.md` | Seed D1; expand atom language |
| Accept rubric §5 | same | Become **minimum** AX checklist, not whole quality system |
| Free-vision-harvest | archived track + playbooks 00–04, 08, 10 | R1 harvest + proximity; **subordinate** to Design Contract |
| Claim audit + illustration-semantics | playbook 03 | R2 safety |
| Book visual standards | `references/book-visual-standards.md` | VC craft checklist source |
| KL ontology + form-space + library | ontology, form-space, kl-form-library | Transfer **candidates**, not automatic winners |
| Caps on AI gens | medical-graphics SKILL | Keep (cost/safety); separate polish budgets |
| accept_gate.py | exploration vs production authorize | Keep; optional soft parse of CLEAN flags later |
| Content-review finding model | block/should/nit | **Clone language** into design + visual critiques |
| P9 visual QA (book) | book-production phase machine | Align checklist with VC; pull earlier for single-chapter |
| Skill eval harnesses | media-brief / medical-graphics evals | New evals for DC/VC failures |
| Studio route card | studio SKILL | Add design_clean / visual_clean fields |
| Gold Form Specs / modules | `briefs/INDEX.md`, `lib/typst/` | Pattern library after critique, not clone-without-reason |

### Replace or demote

| Current practice | Replacement |
|---|---|
| Agent self-Accept after validate | AX only after D-CLEAN + R-CLEAN |
| 30s Accept as main quality bar | Accept is final gate on **already CLEAN** packets |
| Harvest as sole “why chrome” | Atoms must exist **before** free vision; harvest maps to atoms |
| “band grammar → quick code” | Still allowed **if** Design Contract chooses simple form with justification |
| Media↔Graphics max 2 → Human as only second eyes | Critique loops **inside** B until CLEAN (budgeted), Human for residual |
| L2 “to PDF” success | Success = CLEAN packet + PDF; PDF alone is not success |

### Explicitly do **not** throw away

- Free vision as creativity engine (still default track for real visual units)  
- Claim safety culture  
- Exploration vs production compose authorization  
- Anatomy H-Gfx pause  

---

## 8. Concrete change set (implementation packages)

### WP0 — Devtrack + vocabulary
- Create `devtracks/design-quality-system/` with `spec.md` + `plan.md` (this plan refined)  
- Shared terms: Design Contract, Design CLEAN, Visual CLEAN, atom, DC, VC, Pre-Human Quality Packet  
- Update `docs/KNOWLEDGE-MAP.md` pointer when shipping  

### WP1 — Templates (new + extend)
**New:**
- `domains/medical/templates/design-contract.template.md`  
- `domains/medical/templates/design-critique.template.md`  
- `domains/medical/templates/visual-critique.template.md`  
- `domains/medical/templates/quality-packet.template.md` (index linking CLEAN artifacts)

**Extend:**
- `form-spec.template.md` — link Design Contract; require simple-alternative  
- `graphic-decision.template.md` — design_contract_path; visual_critique_path; CLEAN flags  
- `graphic-harvest.template.md` — map each cue → atom_id  
- `accept-record.template.md` — Design CLEAN + Visual CLEAN required; pages inspected; ban self-accept note  
- Optional: `media-brief.template.md` — council status column  

### WP2 — media-brief skill (Phase D + Accept)
- SKILL.md: Design Council process; MD ≠ AX; no Accept without CLEAN  
- `design-reasoning.md`: new § atom justification + DC attack list; demote §5 to AX-only  
- `kl-form-space-process.md`: Form-Space + Design Contract for ambitious **and** non-trivial band units  
- ALWAYS/NEVER: never ship without critique; never unjustified color/arrow  

### WP3 — medical-graphics skill (Phase R)
- SKILL.md + playbook 00: insert R0–R5 around G0–G4  
- New playbook `11-visual-critique.md` (or expand 08)  
- 01: refuse free gen without Design CLEAN packet  
- 02–04: harvest maps to atoms; implement craft DoD  
- 08: handoff only with Visual CLEAN  
- Caps section: AI gen caps **and** design-round / visual-round budgets  
- book-visual-standards: add code-leak, overflow, unmotivated accent  

### WP4 — Studio + orchestration + compose
- Studio: situation 2/4 require council path; route card fields `design_clean`, `visual_clean`  
- **L2:** may auto-run MD→DC→GX→VC loops within budgets; **must stop** for Human on residual blocks / H-Design / production H2; **must not** treat first PDF as done  
- book-production: P3–P5 insert Design CLEAN before graphics finish; P9 checklist = VC criteria  
- compose-chapter: refuse compose if Accept lacks CLEAN links (soft warn first version; hard later)  
- CREATIVE-COMPOSE: one paragraph — quality loops ≠ validate auto-heal  

### WP5 — Guides
- `Medical-Presentation-Forms.md`: Design Contract + atom language + “simple alternative” doctrine  
- `Medical-Graphics-Playbook.md`: visual loop; CRPS re-run as **negative gold** (code leak, unjustified orange, chain-without-job)  
- Optional short `Guides/Design-Critique-Playbook.md` if main guides get too long  

### WP6 — Checkpoints + runbook
- `domains/content-maturity/checkpoints.md`: H-Design, H-Explore quality policy  
- `docs/BOOK-PRODUCTION-RUNBOOK.md` + phase-machine: earlier visual gate  
- AGENTS.md / CLAUDE.md skill-gate table: point to design-quality when visuals  

### WP7 — Evals + negative gold — **done 2026-07-30**
- media-brief evals **4–5** in `evals/evals.json` + fixtures under `evals/fixtures/`  
- medical-graphics evals **4–5** + `crps-rerun-negative-gold.md` fixtures  
- Workspace READMEs list iter-2 pending skill-creator run  
- examples/INDEX negative gold points at fixtures  

### WP8 — Optional tooling (phase 2, not blocking policy)
- `bookkit graphics critique-export` helper: compile unit → PNG dir → stub critique file  
- Soft accept_gate checks for `Visual CLEAN: yes` strings  
- **Not** required for v1: automated aesthetic scoring / LLM vision CI  

### WP9 — Unit pilot under full council — **done**; **WP9b ambition** 2026-07-31

**Status:** WP9a craft CLEAN → Human “uninspired” → **WP9b** Design reopen + free vision + realize + Visual CLEAN r3  
**Slug:** `kl-crps-wp9-2026-07-31`  
**Module:** `domains/medical/lib/typst/kl-wave6/crps-wp9.typ`  
**Pilot:** `toolset/compose/pilots/kl-crps-wp9-2026-07-31/unit.typ`  

**Human view (absolute paths):**

- `/home/arneb/repos/company/Book-Layouting-Typst/toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/p1.png`  
- `/home/arneb/repos/company/Book-Layouting-Typst/toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/p2.png`  
- `/home/arneb/repos/company/Book-Layouting-Typst/toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/unit.pdf`  

#### Outcomes

| Unit | WP9a (rejected by Human ambition) | WP9b | Design | Visual |
|---|---|---|---|---|
| U-mechanism | numbered list + callouts | trigger → 3 equal pathway chips → converge → DDx\|Chroni fork | clean | clean r3 |
| U-mimic | flat map-rows | full-width peel stack + free vision provenance | clean | clean r3 |

**Process lessons:**

1. Design CLEAN on *simple-wins* is necessary but **not sufficient** — ambition bar when the job needs geometry.  
2. **Ambition without density is also failure** — sparse full-page units for few claims explode monographic page count. Human WP9c: space budget mandatory.  

#### WP9c density (2026-07-31)

- **Space budget doctrine** harvested into Design Contract / DC / VC / media-brief / medical-graphics  
- Dense pathway strip + dual-band mimic — density OK; mechanism graphic still weak on teaching gain  

#### WP9d simple mechanism (2026-07-31)

- Human: density better, but **mechanism still no clear Mehrwert vs text**  
- **Chose simple (L0/L1):** compact prose + two consequence lines  
- Mimic dual-band retained (**L4** error hierarchy)  

#### Form intensity ladder (Human doctrine 2026-07-31)

Continuum encoded: L0 prose → L1 list → **L2 formatted text** → **L3 panel text** → L4 schematic → L5 diagram → L6 free vision.  
SoT: `domains/medical/skill/media-brief/references/form-intensity-ladder.md` · Contract + DC + skills/guides wired.  
**Middle path L2–L3 first-class**; lowest L that earns gain + space budget.

```bash
code toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/p1.png
code toolset/compose/pilots/kl-crps-wp9-2026-07-31/preview/unit.pdf
```

#### After pilot

- Full CRPS chapter re-pilot only on Human greenlight  
- Commit harvest + intensity ladder + WP9d when Human OK  

---


## 9. Caps & “until nothing left” (resolve tension)

Existing culture: no Genesis endless loops; max 2 Media↔Tech; gen caps.

**New model — dual budgets:**

| Budget | Default | Then |
|---|---|---|
| AI free gens / unit | 2 | Human / stop free vision |
| AI refine gens / unit | 2 | code path or Human |
| **Design critique rounds** (D2↔D3) | **4** | H-Design |
| **Visual critique rounds** (R4↔R5) | **5** | Human visual gate |
| Media↔Tech feasibility | 2 | Human (unchanged) |

**Floor beats schedule:** If budget exhausted with open `block` → **stop unclean**; do not Accept. Human decides continue budget vs simplify form vs cut unit.

**Simplification is a valid CLEAN path:** DC/VC may force “use the simple alternative” — that is success, not failure.

---

## 10. Success criteria (spec-level)

| # | Criterion |
|---|---|
| S1 | No free vision / ambitious realize without Design CLEAN packet |
| S2 | Every non-default visual atom has a Contract row with pedagogy + media-design reason |
| S3 | Design Critic is a separate step/artifact; builder cannot self-CLEAN design |
| S4 | Visual Critic inspects PNG/PDF; raw markup / overflow / uncontracted color are auto-blocks |
| S5 | Accept (incl. exploration didactic) requires Design CLEAN + Visual CLEAN |
| S6 | Studio L2 cannot declare chapter “done” on validate alone |
| S7 | Guides + skills encode simple-alternative doctrine |
| S8 | At least one eval fails agent that skips visual critique |
| S9 | CRPS-class failures documented as negative gold |
| S10 | (Post-ship) one unit re-pilot under council shows zero block-class defects on Human first look |

---

## 11. Risks

| Risk | Mitigation |
|---|---|
| Process too heavy → agents skip | Templates short; simple-form shortcut; budgets; studio enforces packet paths |
| Role-play theater without real critique | Force PNG paths + defect coordinates; eval fixtures; Human samples |
| Endless loops | Hard budgets + unclean stop (no fake Accept) |
| Harvest conflicts with Contract | Harvest cannot add atoms; reopen D |
| Slower throughput | Quality over speed is the point; exploration no longer means dirty PDF |
| Scope creep into bookkit | Keep all council in domains/medical + skills |

---

## 12. Phasing (ship order)

| Phase | Deliverable | Human sees |
|---|---|---|
| **P0** | Devtrack open; this plan approved | green light |
| **P1** | WP1 templates + WP2/WP3 skill procedures + WP6 gates | can run council on paper |
| **P2** | WP4 studio/orchestrator/compose wires + WP5 guides | default path enforces packets |
| **P3** | WP7 evals + negative gold | regression |
| **P4** | Optional WP8 tooling | ergonomics |
| **P5** | WP9 CRPS unit re-pilot under new process | **agent CLEAN 2026-07-31** (`kl-crps-wp9-…`); Human H-Explore optional |

**Estimate:** P1–P2 = substantial docs/skills session(s); P5 = real graphics work after process exists.  
**Agent bar met for two units;** full chapter still Human-gated.

---

## 13. Immediate non-goals

- Full automatic rewrite of all KL modules  
- LLM-as-judge CI as sole gate  
- Removing free vision or harvest  
- Production freeze rules change  
- Fixing entire CRPS re-run chapter **before** process exists (optional parallel hotfix if Human wants — separate from this track)

---

## 14. Recommended Human decisions before implement

1. **Exploration quality bar:** Same Visual CLEAN as production? (**Recommend: yes** for anything shown as chapter PDF.)  
2. **H-Design default:** Always before free vision on heavy chapters, or only after design-budget exhaust? (**Recommend: always for free-vision-ambition units in L1; L2 may auto-loop design up to budget then stop.**)  
3. **Who plays DC/VC:** Same model with forced role separation vs spawn subagents? (**Recommend: forced separation + optional subagent; artifact is law.**)  
4. **Hotfix CRPS re-run:** Process-first only, or also emergency peel bugfix now?  

---

## 15. One-sentence summary

**Turn “pipeline with self-ticked Accept” into a Design + Realize council with atom-level justification, adversarial critique, mandatory visual PNG loops, and a hard ban on presenting anything unclean to Human — while reusing Form Spec, free-vision harvest, claim audit, creative-first, and role boundaries as the substrate.**

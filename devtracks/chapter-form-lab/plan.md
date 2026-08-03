# Plan — Chapter Form Lab

**Status:** active · craft waves a/b/c done · **lab-learning skill established** 2026-08-02 · **Pass O open-asset pilot** 2026-08-03  
**Mission class:** **lab-learning** — not default production chapter pipeline  
**Spec:** [spec.md](spec.md)  
**Portfolio (N=4):** [portfolio.md](portfolio.md) — Gicht · Schlaganfall · Melanom-ABCDE · Anaphylaxie  
**Open-Asset pilot (parallel, testable):** policy [`domains/medical/OPEN-ASSET-POLICY.md`](../../domains/medical/OPEN-ASSET-POLICY.md) · board `toolset/orchestration/form-lab/portfolio-open-asset-2026-08/` · labs `*-2026-08-o` · pilots `form-lab-*-o` — **not** deep-wired into production Graphics or Form Lab COMPLETE  
**Runtime:** `toolset/orchestration/form-lab/<lab-id>/`  
**Skill SoT:** `toolset/skill-pack/form-lab-orchestrator/` (default **L2 autodrive-to-complete**)  
**Studio entry:** situation **9** → handoff to `form-lab-orchestrator` (Studio never crafts itself; skill drives full program)  
**First chapter:** Gicht · kl-kurz · `chapter-v-3-gicht.md`  

---

## 0. One-line intent

**Orchestrator** steuert; **Pass-Sessions** holen pro Medium iterativ das **Maximum** heraus; erst danach **Vergleich**, **Synthese** und **Harvest** — kein One-Shot, kein Alles-in-einer-Session, **kein Production-Default**.

### 0.1 Terminal COMPLETE (hard gate, post skill establishment)

| Required | Not sufficient alone |
|---|---|
| Medium optima + matrix + Pass S (or residual with OR note) | PDF/PNG in `dist/form-lab/` |
| **`harvest` = done:** form-vocabulary + production-bridge (portfolio-level OK) | `terminal_status: COMPLETE` without harvest cell |
| Explicit **waiver** documented on board if Human skips harvest | Agent silence on harvest |

Legacy boards (waves a/b, early c craft) may keep historical COMPLETE with `harvest | deferred` — new labs and portfolio-c after skill establishment follow the hard gate.

---

## 1. Architecture

```text
                         ┌─────────────────────────────┐
                         │  OR — Form-Lab Orchestrator │
                         │  board · run-log · route    │
                         │  budgets · resume · spawn   │
                         └──────────────┬──────────────┘
                                        │
          ┌─────────────┬───────────────┼───────────────┬─────────────┐
          ▼             ▼               ▼               ▼             ▼
       Pass T        Pass C          Pass V          Pass R        Pass D?
     (session)     (session)       (session)       (session)     (session)
          │             │               │               │             │
          │    each: iterative craft loop until medium-optimum        │
          │    PW Builder  ↔  PC Critic  (roles; PNG every round)     │
          └─────────────┴───────────────┴───────────────┴─────────────┘
                                        │
                                        ▼
                              CM Comparison matrix
                                        │
                                        ▼
                              SY Pass S Synthesis
                                        │
                                        ▼
                              Harvest → skills / guides
```

### 1.1 What the Orchestrator does

| Does | Does not |
|---|---|
| Create/update lab board, run-log, route | Author a full pass layout as sole builder in one go |
| Freeze claim pins + lab-id | Rewrite clinical content |
| Emit **Pass Handoff Packets** (prompt + rules + paths) | Skip min craft rounds |
| Start / resume pass workers (session prompt or subagent) | Mark medium-optimum without PC dossier |
| Enforce medium allow/deny on status checks | Mix Pass T and Pass V in one worker mandate |
| Schedule comparison after all optima | Synthesize early |
| Stop on caps, errors, Human gates | Pretend one-shot is “optimum” |

### 1.2 What a Pass Worker session does

```text
loop (craft round r = 1…max):
  1. Build / revise under medium rules → chapter.typ (+ assets if V/R)
  2. Compile + export page PNGs
  3. Pass Critic (separate role/subagent or forced persona after build):
       - attack PNGs
       - medium-rule violations
       - pedagogy / scan / type / illustration craft
       - concrete fix list (not vague “polish”)
  4. If PC = medium-optimum candidate AND r ≥ min_rounds:
       write exhaustion dossier → hand back to OR
  5. Else implement fixes → r += 1
  6. If r > max_rounds → residual dossier + OR/Human
```

**Anti-pattern:** “First draft → accept for comparison.”  
**Required pattern:** “Draft → see → fix → see → … until the medium has nothing left to give.”

### 1.3 Subagent vs new session

| Mechanism | When |
|---|---|
| **New session** (preferred per pass) | Full Pass T / C / V / R — long iterative work, clean context |
| **Subagent in OR session** | Single craft round, quick compile, status pulse |
| **Forced role switch same session** | Only if context still small; must still separate Builder vs Critic *steps* with artifacts |

Handoff packet is always on disk so a **cold session** can resume:

```text
toolset/orchestration/form-lab/<lab-id>/
  kickoff.md
  board.md
  run-log.md
  route.md
  pins.md                 # frozen claims / content paths
  passes/
    T/
      HAND-OFF.md         # rules, goals, paths, current round
      medium-rules.md
      critique-r01.md …
      exhaustion.md       # when optimum claimed
    C/ …
    V/ …
    R/ …
    S/ …
  comparison/
    matrix.md
    notes.md
```

Artifacts (PDF/PNG):

```text
dist/form-lab/<lab-id>/<pass>/
  chapter.pdf
  p1.png … pn.png
  chapter.typ → or symlink to toolset/compose/pilots/form-lab-…
```

Source modules:

```text
toolset/compose/pilots/form-lab-<chapter>-<pass>/chapter.typ
domains/medical/lib/typst/form-lab/<chapter>/<pass>.typ   # optional module
domains/medical/assets/form-lab/<lab-id>/<pass>/…       # V/R assets
```

---

## 2. Medium rules (hard — Critic enforces)

### Pass T — Typography + Icons

| Allow | Deny |
|---|---|
| Type scale, weight, tracking, hierarchy | Panel walls / multi-color fill cards as primary structure |
| Lists, tight tables, definition runs | Free-vision raster heroes |
| Simple icons (FA or 1-color glyphs) as **repeatable** marks | Rich multi-tone SVG scenes |
| One quiet danger line (text or thin rule) | TIME as four fat colored slabs (that is Pass C) |
| Generous but purposeful whitespace | Chrome that carries meaning only by fill color |

**Exhaustion means:** further gains would require color panels, illustration, or diagrams — documented.

### Pass C — Color / Chrome / simple forms

| Allow | Deny |
|---|---|
| Semantic color, left bars, bands, cards, grids | Embedded free-vision photos as main teaching |
| TIME stack, mimic rows, FA/NM panels | Large custom SVG illustration system (Pass V) |
| Shape hierarchy (weight of bars, solid T1 only when earned) | Raster montage |
| Bookkit / explore chrome primitives | Decorative gradients without meaning |

**Exhaustion means:** remaining weak units need *picture* or *vector schema*, not another box variant.

### Pass V — Vector max (atomic)

| Allow | Deny |
|---|---|
| Many small SVGs; pictogram set; **thumbnail-legible** CeTZ schemas | One full-page “infographic SVG” dumping all claims |
| Hybrid: SVG base + Typst labels on slots | Raster AI photos as primary |
| Motif reuse across units | Caption-rescued doodles (blob+dot, smiley, arc-only “airway”, abstract ugly-duck) |
| Creative exploration within claim honesty | Shipping glyphs without **Semantic Read PASS** (same gate as R) |
| Honest residual when R already covers recognition | Force-weak vector “winners” for medium balance |

**SoT:** `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md` §2  
**Exhaustion means:** vector marks that **PASS** cover recognition/relation; residual needs photo or pure type — **not** a caption next to geometry.

### Pass R — Raster aspects (small gens)

| Allow | Deny |
|---|---|
| Many **small** gens/refines per aspect (joint, fever cue, mimic frame visual, …) | Single mega-infographic free vision |
| Montage/layout of aspects in Typst | Shipping without **Semantic Read PASS** + claim audit per aspect |
| Typst safety text outside raster | Demoting all rasters to code mid-pass without OR + dossier |
| Higher gen budget than production (kickoff D8) | Ignoring Semantic Read / icon-semantics FAIL (not a nit) |
| **Short positive prompts** (concrete subject) | Long kitchen-sink prompts; negative-list-as-strategy |
| Clinical context when job is in-situ; **one aspect per job** | Redundant face stacks; sticker cutouts when skin field teaches |

**SoT:** `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md`  
**Exhaustion means:** additional gens only reshuffle; teaching gain flat; document limits of raster for this chapter.

### Pass S — Synthesis

| Allow | Deny |
|---|---|
| Winners from matrix + Human rank with **Semantic Read PASS** | New medium not tested in T/C/V/R(/D) |
| Mixing e.g. T body + **one** R recognition + C urgency | Reintroducing portfolio KL monotony by habit |
| **Omit is a win** (drop whole medium if it does not teach) | Force-including V doodles / co-winners for “C+T+V+R balance” |
| Single strongest mark per learner job | Stacking face + grimace + face-glyph for one job |

---

## 3. Craft loop detail (every pass)

### 3.1 Round artifacts

| Artifact | Path pattern |
|---|---|
| Build | `…/chapter.typ`, assets |
| PNG set | `dist/form-lab/<lab-id>/<pass>/p*.png` (re-export every round) |
| Critique | `passes/<pass>/critique-rNN.md` status: `revise` \| `medium-optimum-candidate` |
| Fix list | inside critique: concrete, page-referenced |
| Round log | run-log entry `PASS <id> round NN` |

### 3.2 Critic attack dimensions (all passes)

1. **Medium purity** — deny-list violations  
2. **Learner jobs** — pins from `pins.md` findable under time pressure  
3. **Scan path** — one primary path; no restless equal containers (unless medium is chrome and still scannable)  
4. **Craft ceiling** — “what would a strong designer still fix in *this medium*?”  
5. **Claim honesty** — no false teaching  
6. **Density** — sparse-sprawl and squish both blocked  
7. **Semantic Read** (hard) — every teaching image/glyph: Lesart · Job-Fit · Falsche Lehre · Claim-Trennung; FAIL = **block**  

### 3.3 Medium-optimum gate

All must hold:

- [ ] `round >= min_craft_rounds` (default **3**)  
- [ ] PC status `medium-optimum-candidate` with **empty block list** (nits OK)  
- [ ] **No open Semantic Read FAIL** on mounted aspects  
- [ ] Exhaustion dossier answers: *What did we try? What still hurts? Why can’t this medium fix it?*  
- [ ] OR records `pass_status: optimum` (or Human H-Pass sign)  
- [ ] Latest PNG set linked (not stale)

**Not sufficient:** validate green, “looks fine”, single round, Builder self-praise, disclaimer caption under a wrong image.

### 3.4 Caps (defaults — confirm at kickoff)

| Cap | Default |
|---|---|
| Min craft rounds / pass | 3 |
| Max craft rounds / pass | 12 |
| Free vision atoms / Pass R | 8–12 (not production 2) — **Human D8** |
| Refine / atom | 2 |
| Parallel passes | **No** (serial: T→C→V→R) to learn and avoid resource thrash; optional later parallel C∥V if OR allows |

---

## 4. Phases (L0–L7 skill machine)

Skill phases align with craft phases; **L7 harvest is mandatory for COMPLETE**.

| Phase | Lab | Goal | Exit |
|---|---|---|---|
| **L0** | Kickoff & freeze | lab-id, pins, D1–D8, scaffold | route → Pass T |
| **L1** | Pass T | type+icon medium-optimum | exhaustion + board T=optimum |
| **L2** | Pass C | color/chrome optimum | same |
| **L3** | Pass V | vector atomic + SR on glyphs | same |
| **L4** | Pass R | raster atomic + SR | same |
| *(opt)* | Pass D | relation medium if matrix gap | optional |
| **L5** | Comparison | jobs × passes matrix; Human S-rank optional/waivable | matrix ready for S |
| **L6** | Pass S Synthesis | winners only; omit-is-win | synthesis-clean |
| **L7** | **Harvest** | form-vocabulary + production-bridge (+ optional SR log) | board harvest=done → terminal COMPLETE |

### Phase 0 / L0 — Kickoff & freeze

| Step | Owner | Output |
|---|---|---|
| P0.1 Create `toolset/orchestration/form-lab/<lab-id>/` | OR | kickoff, board, run-log, route |
| P0.2 Lock chapter + content pin paths | H+OR | `pins.md` |
| P0.3 Lock D1–D8 | H | kickoff decisions table |
| P0.4 Learner jobs list (5–8) for matrix rows | OR/MD | `pins.md` § jobs |
| P0.5 Scaffold empty pass dirs + medium-rules copies | OR | `passes/*/` |

**Exit:** route says `NEXT: Pass T session handoff`.

### Phase 1 / L1 — Pass T (Type+Icon) to medium-optimum

| Step | Owner |
|---|---|
| P1.1 Write HAND-OFF.md + medium-rules | OR |
| P1.2 **New session:** “Form Lab Pass T … load HAND-OFF” | PW |
| P1.3 Craft loop ≥3 rounds | PW↔PC |
| P1.4 Exhaustion.md + board `T=optimum` | PW/PC → OR |
| P1.5 Optional H-Pass look | H |

**Exit:** T optimum artifacts in `dist/form-lab/.../T/`.

### Phase 2 / L2 — Pass C (Color/Chrome)

Same pattern as Phase 1 with C rules.  
**May reuse structure ideas from T**, not copy chrome into T retroactively.

### Phase 3 / L3 — Pass V (Vector atomic)

- Plan motif list before draw (OR/PW): e.g. hot MTP-I glyph, fever mark, crystal-not-clear, 112, scope boundary, …  
- Prefer SVG files under assets; Typst assembly.  
- Craft loop includes **vector redesign**, not only layout spacing.  
- **Every glyph:** open PNG → Semantic Read without caption; anti-doodle FAIL → redraw or demote.  
- Do not score recognition jobs as V-winners on caption-only geometry.

### Phase 4 / L4 — Pass R (Raster atomic)

- Unit aspect map: many small targets, not one scene; **one primary per learner job**.  
- Claim audit + Semantic Read per aspect; hybrid labels in Typst.  
- Clinical context when in-situ gestalt matters.  
- **Forbidden:** demote entire pass to code because “scan path” — fix montage or aspect instead; demote only with OR + residual note.

### Phase 5 — Optional Pass D

Only if comparison prep shows relation jobs weak in all of T/C/V/R.

### Phase 6 / L5 — Comparison

| Step | Owner |
|---|---|
| P6.1 Build matrix template (jobs × passes) | CM/OR |
| P6.2 Agent scores from PNGs | CM |
| P6.3 Optional Gemini / second reader | CM |
| P6.4 **Human ranking** (waivable → agent matrix + later H-S-rank) | H |
| P6.5 Winner map per job | CM |

**Exit:** `comparison/matrix.md` complete enough for S.

### Phase 7 / L6 — Pass S Synthesis

Iterative (not one-shot): draft hybrid → critique → revise until **synthesis-clean** (different bar: coherence of mix + evidence links).

### Phase 8 / L7 — Harvest (required for COMPLETE)

| Deliverable | Path pattern | Content |
|---|---|---|
| form-vocabulary | `…/harvest/form-vocabulary.md` (lab or portfolio) | job classes → winning media patterns, ladder notes |
| production-bridge | `…/harvest/production-bridge.md` | job→carrier defaults for compose / medical-graphics; **do-not** anti-patterns from this lab |
| human-s-rank | optional stub | Human override cells; waiver OK |
| sr-log | optional | Semantic Read FAIL/PASS ledger for R/V |

Templates: `toolset/orchestration/form-lab/_templates/form-vocabulary.md` etc.

| Into (longer term) | What |
|---|---|
| production-bridge consumers | `compose-chapter`, `medical-graphics`, studio mini-pipeline |
| form-lab-orchestrator skill | process already encoded; vocabulary stays in harvest docs |
| Guides (deferred until vocabulary stabilizes) | optional Form-Lab section |

**Archive track** only after harvest footer + skill establishment proven.

Wave-c portfolio harvest SoT: `toolset/orchestration/form-lab/portfolio-2026-08-c/harvest/`.

---

## 5. Board model

### 5.1 Lab-level cells

| Cell | Values |
|---|---|
| lab_id | slug |
| chapter | content pin |
| pins | frozen \| open |
| pass_T … pass_R | todo \| in-progress \| round-N \| optimum \| blocked \| waived |
| comparison | todo \| draft \| done |
| synthesis | todo \| in-progress \| done |
| harvest | todo \| done |

### 5.2 Pass-level cells

| Cell | Values |
|---|---|
| status | see above |
| craft_round | int |
| last_png | path |
| last_critique | path |
| medium_optimum | no \| candidate \| yes \| human-signed |
| worker_session | note / date |

### 5.3 route.md

Always only **current next**:

```markdown
# Route — form-lab <lab-id>
NEXT: Pass V craft round 4
SESSION: new
HANDOFF: toolset/orchestration/form-lab/<lab-id>/passes/V/HAND-OFF.md
STOP_AFTER: medium-optimum candidate or max rounds
```

---

## 6. Session prompts (templates)

### 6.1 Orchestrator resume

```text
Resume Form Lab board <lab-id> as Orchestrator only.
Read board.md + run-log.md + route.md.
Do not implement pass craft. Route or spawn next worker handoff.
```

### 6.2 Pass Worker cold start

```text
Form Lab Pass <T|C|V|R> Worker.
Lab: toolset/orchestration/form-lab/<lab-id>/
Load: passes/<P>/HAND-OFF.md + medium-rules.md + pins.md
Goal: iterative craft to medium-optimum (min 3 rounds).
Each round: implement → PNG → write critique-rNN as Critic role (or request critic subagent) → revise.
Do not switch medium. Do not mark optimum before min rounds + empty blocks + exhaustion.md.
When optimum candidate: stop and hand back to Orchestrator.
```

### 6.3 Pass Critic only (optional dedicated session)

```text
Form Lab Pass Critic for <lab-id> pass <P> round <N>.
Read latest dist/form-lab/.../p*.png and medium-rules.md.
Write passes/<P>/critique-rNN.md with blocks/nits and required fixes.
Do not implement.
```

---

## 7. HAND-OFF.md skeleton (per pass)

```markdown
# Handoff — Pass <ID> — <lab-id>

## Mandate
Medium-optimum for Pass <ID>. Iterative. Not one-shot.

## Medium rules
See medium-rules.md (allow/deny). Critic enforces.

## Content pins
See ../../pins.md — do not invent claims.

## Learner jobs (must remain teachable)
1. …
2. …

## Paths
- source: toolset/compose/pilots/form-lab-…-<pass>/
- dist: dist/form-lab/<lab-id>/<pass>/
- critiques: this directory critique-rNN.md

## Current state
- craft_round: N
- last status: …
- open blocks from last critique: …

## Done when
medium-optimum gate (spec) + exhaustion.md
```

---

## 8. Comparison matrix (jobs × passes)

Template: `toolset/orchestration/form-lab/_templates/comparison-matrix.md`  
SoT scoring: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md` §3

Rows = learner jobs from pins (examples for Gicht):

1. Gatekeeper: septisch mitdenken / Kristalle entwarnen nicht  
2. Erkennung: heiße Podagra / MTP-I Gestalt  
3. Mimic: „bekannte Gicht = nur Schub“  
4. TIME: T1 vs T2 vs T3/T4 hierarchy  
5. SCOPE: HP-Grenze  
6. Page-1 continuous reading calm  
7. Whole-chapter orientation  

Columns = T · C · V · R · (D) · later S  

Scores **1–5 = caption-free teaching power** (not “mark exists for job”).  
- Semantic Read FAIL → not a winner (score 1 / n/a)  
- Caption-dependent glyph → max **2**  
- Co-winners only for **distinct** cues  

Human final rank overrides agent if conflict.

---

## 9. Skill / tooling work (phased)

| When | Work | Status |
|---|---|---|
| P0 | Templates under `toolset/orchestration/form-lab/_templates/` | done |
| Craft waves a/b/c | four monographs depth-first T→S | craft done |
| Skill separation | `form-lab-orchestrator` + studio situation 9 + harvest gate | **done 2026-08-02** |
| Wave-c harvest | portfolio form-vocabulary + production-bridge | done (no re-craft) |
| Not blocking lab | Full MCP / automation / skill-creator eval suite | deferred |

Scripts:

- `scripts/form-lab/verify-form-lab-complete.py` — craft artifact gates (waves a/b; does **not** prove skill/harvest)

---

## 10. Risks & mitigations

| Risk | Mitigation |
|---|---|
| OR does the work itself | Skill ALWAYS/NEVER; route-only mode prompts |
| One-shot pass | min_rounds hard; optimum gate |
| Pass C looks like current portfolio | Critic: “is this just KL shell?” as block if no craft growth |
| Pass V/R collapse to boxes | medium deny-list; demotion needs OR |
| Pass V caption-doodles win matrix | Semantic Read on glyphs; caption-dependent ≤2; omit-is-win in S |
| Context blowup | new session per pass; handoff on disk |
| Claim drift in images | pins + per-aspect audit R; labels Typst |
| Infinite polish | max_rounds + residual dossier is valid exit |
| Human bottleneck | agent-optimum allowed with later Human matrix rank (D7) |
| S forces all media on page 1 | medium-rules-S: omit is a win; one mark per job |

---

## 11. Timeline shape (not calendar)

```text
P0 Kickoff ..................... 1 short OR session
P1 Pass T ...................... 1–N worker sessions (until optimum)
P2 Pass C ...................... 1–N
P3 Pass V ...................... 1–N (asset-heavy)
P4 Pass R ...................... 1–N (gen-heavy)
P6 Comparison .................. 1 OR/CM + Human
P7 Pass S ...................... 1–N
P8 Harvest ..................... 1
```

Expect **many sessions**. That is the design.

---

## 12. Immediate next steps (after Human plan OK)

1. Human confirms D1–D8 (or edits in kickoff).  
2. OR creates `toolset/orchestration/form-lab/gicht-2026-08/` (or chosen lab-id) from `_templates/`.  
3. Write `pins.md` from Kursbuch Gicht + existing pilot claims.  
4. Emit Pass T HAND-OFF + `medium-rules-T.md`.  
5. **Stop OR.** Start **new session** Pass T Worker only.

Do **not** start Pass C until T medium-optimum (or Human waiver with residual).

### File index (this track)

| File | Role |
|---|---|
| [spec.md](spec.md) | Goals, roles, success criteria, pass catalog |
| [plan.md](plan.md) | Architecture, phases, caps, prompts |
| [portfolio.md](portfolio.md) | Four chapters + diversity rationale + order |
| [pass-craft-loop.md](pass-craft-loop.md) | Iterative build→PNG→critique loop + templates |
| Runtime | `toolset/orchestration/form-lab/` |
| Templates | `toolset/orchestration/form-lab/_templates/` |

---

## 13. Decisions log (fill at kickoff)

| ID | Decision | Date |
|---|---|---|
| D1 Portfolio N=4 | **Gicht · Schlaganfall · Melanom-ABCDE · Anaphylaxie** ([portfolio.md](portfolio.md)) | 2026-08-02 |
| D2 Execution order | *pending* (default A depth-first, Gicht first) | |
| D3 Pass D | *pending* | |
| D4 Min rounds | *pending* (default 3) | |
| D5 Max rounds | *pending* (default 12) | |
| D6 Session model | *pending* (default new session / pass) | |
| D7 H-Pass gate | *pending* | |
| D8 Pass R gen budget | *pending* | |

---

## Harvested into

| Target | What |
|---|---|
| `toolset/skill-pack/form-lab-orchestrator/` | Process skill L0–L7, ALWAYS/NEVER, lab≠production |
| `toolset/orchestration/form-lab/README.md` + `_templates/` | Harvest gate + templates |
| `toolset/orchestration/form-lab/portfolio-2026-08-c/harvest/` | Wave-c form-vocabulary + production-bridge |
| `toolset/skill-pack/studio/` situation 9 | Route to form-lab-orchestrator |
| `AGENTS.md` / `CLAUDE.md` / `docs/KNOWLEDGE-MAP.md` | When-to-use / when-not-default-production |

Track remains **active** until optional guide harvest + archive decision; craft research waves complete.

---
name: book-production-orchestrator
description: "ALWAYS use as the top-level controller for full-book or multi-chapter production from content-ready/frozen text to print-ready PDF: maintain board state, log every step, route next skill (content-review, media-brief, open-assets when needed, medical-graphics, compose-chapter, human gates, prepress), resume after hours, plan kickoff with user, then drive autonomously until blocked. Covers Form Spec → Design CLEAN → conditional open-assets → graphics playbook → accept → compose → chapter macro VC → assembly → visual QA → print. Do NOT rewrite clinical claims, replace specialist skills' work products, or skip Human checkpoints H1/H2/H4/H5/H-Gfx."
---

# book-production-orchestrator

**Top-level controller** for **book production** (C content → B media/graphics → A compose/print).

Keeps **overview**, **documents every step**, answers **where are we / what's next / go back?**, and can **drive autonomously for hours** between Human gates — by writing durable board + run-log files and re-entering specialist skills.

**SoT:** `toolset/skill-pack/book-production-orchestrator/`  
**Board runtime:** `toolset/orchestration/book-production/<book-id>/`  
**Runbook:** `docs/BOOK-PRODUCTION-RUNBOOK.md`  
**Checkpoints:** `domains/content-maturity/checkpoints.md`  
**Does not replace:** `content-review`, `media-brief`, `open-assets`, `medical-graphics`, `compose-chapter` — **routes and logs** them (craft stays in specialists).  
**Obey:** [`COLLABORATION-CONTRACT.md`](../COLLABORATION-CONTRACT.md) — controllers, greens, session law, done. **When a board already exists under book-production, this skill is the resume owner** (studio must not keep a shadow board).

## When to use

- User hands over **finished / frozen book content** (or multi-chapter set) for layout + graphics + print  
- “Where are we in book production?” / “what next?” / “resume overnight run”  
- Kickoff planning then **autonomous drive** until Human gate or hard stop  
- Retroactive: analyze repo artifacts and **rebuild board + run-log**  

## When NOT to use

| Situation | Use instead |
|---|---|
| User unsure which path / wants guided intake / `/studio` | **`studio`** (front door) — then hand off here for full-book |
| Only C1–C2 review rounds on one draft | `content-orchestrator` / `content-review` |
| Only write Form Spec / free vision / compose | specialist skill directly |
| Rewrite clinical text | Content (C) / author |
| Sign freeze/proof/imprimatur | **Human** |

**Relationship to `studio`:** `studio` is the **intake / situation menu** for any goal. This skill owns the **durable multi-chapter board (P0–P11)** after full-book production is chosen (or resumed).

## Relationship to `content-orchestrator`

| Skill | Scope |
|---|---|
| `content-orchestrator` | **C-only** maturity C1–C4 route cards |
| **this skill** | **Full book:** design SoT + media + graphics playbook + accept + compose + assembly + visual QA + prepress |

After freeze, prefer **this** skill for production layout path. C-orchestrator may hand off: `next_skill: book-production-orchestrator`.

---

## Modes

### 1) Kickoff (with Human)

First session for a book:

1. Create `toolset/orchestration/book-production/<book-id>/`  
2. Write `kickoff.md` from template (content roots, genre mix, print target, autonomy, **scope**, optional `playbook_pin` / `production_bridge`).  
3. Write `board.md` from template (chapter inventory + quality/open-assets/packet/macro_vc cells).  
4. Write empty `run-log.md`.  
5. Agree **autonomy charter** (see below).  
6. Emit first **route** and either stop for Human or start Phase loop.

### 2) Status / resume

1. Read `board.md` + last `run-log.md` entries.  
2. Optionally run `./scripts/book-production-status.sh <book-id>` to reconcile filesystem.  
3. Answer: **current phase**, **blockers**, **next action**, **rollback candidates**.  
4. Update board if drift found.

### 3) Autonomous drive (default after kickoff)

Until stop condition:

```text
loop:
  1. Read board → pick highest-priority ready unit/chapter
  2. Append run-log "START step …"
  3. Load/invoke specialist skill procedure (do the work OR handoff clearly)
  4. Verify expected artifacts exist
  5. Append run-log "DONE/FAIL …" + update board cells
  6. If Human gate → STOP with route card + what Human must do
  7. If cap/error → STOP or rollback suggestion
  8. Else continue next step
```

**Durable SoT:** board + run-log on disk. Multi-hour / multi-session: **resume by reading board**, not chat memory.

### 4) Retroactive document

If user says “analyze what we already did”:

1. Scan paths (briefs, form-specs, assets, spikes, accepts, pilots, dist PDFs).  
2. Fill/update board from evidence.  
3. Write run-log section `## Retroactive reconstruction YYYY-MM-DD`.  
4. Route next gap.

---

## Phase machine (book-level)

| Phase | ID | Goal | Typical next_skill |
|---|---|---|---|
| Kickoff / plan | **P0** | book-id, inventory, autonomy, print target | (this) + Human |
| Design SoT | **P1** | theme/fonts/main skeleton once | `bookkit` / Human design |
| Content gate | **P2** | per chapter frozen or exploration policy | `content-orchestrator` / Human **H1** |
| Media plan | **P3** | brief + **form-spec** + `open_asset_scan` per ambitious unit | `media-brief` |
| Graphics | **P4** | Design CLEAN → **conditional open-assets** → free→audit→realize | `open-assets` (iff needed) · `medical-graphics` 00–08 |
| Accept | **P5** | Media Accept + graphic winners (+ rights if asset) | `media-brief` Accept · **H2** production |
| Compose | **P6** | chapter.typ embed winners + multi-unit **chapter macro VC** | `compose-chapter` |
| Assembly | **P7** | main book PDF | `./scripts/bookkit build` (configurable `--root`) |
| Validate | **P8** | claims/compile/UA optional | compose validate |
| Visual QA | **P9** | multi-chapter assembly sample PNG / Must-see | Human + agent inspect |
| Prepress | **P10** | print/PDF-X/DPI | scripts + Human |
| Proof / release | **P11** | proof + imprimatur | Human **H4** / **H5** |

Chapter rows advance **P2→P6** largely independently; **P1** once; **P7–P11** book-level.

---

## Chapter cell states

For each chapter on the board, track (full vocabulary in `templates/board.template.md`):

| Cell | Values |
|---|---|
| content | missing \| draft \| review \| **frozen** \| blocked |
| brief | missing \| draft \| done |
| form_specs | none-needed \| missing \| partial \| done |
| graphics | none-needed \| todo \| in-progress \| units-done |
| **design_clean** | n/a \| missing \| partial \| **clean** \| blocked |
| **visual_clean** | n/a \| missing \| partial \| **clean** \| blocked |
| **macro_vc** | todo \| **clean** \| blocked \| n/a |
| **quality_packet** | missing \| path \| **ready** |
| **open_assets** | n/a \| needed \| partial \| done \| blocked |
| accept | missing \| revise \| **accepted** |
| compose | missing \| draft \| **done** |
| pdf | missing \| path |
| notes | free text (short labels only — **no critique bodies**) |

**Board YAML header also:** `scope` (`full-book` \| `single-chapter` \| `explore-portfolio`), optional `playbook_pin`, advisory `production_bridge`.

**Unit-level** subtable: unit_id, form_spec, design_clean, vision, claim_audit, **needs_open_assets** (yes\|no), **open_assets** (n/a\|needed\|scanning\|manifest_ok\|blocked), **manifest_path**, realize, visual_clean, winner, spikes.

**Cell = resume index.** Evidence stays in artifact trees (Form Spec, Design Contract, critic notes, real PNG paths, MANIFEST). Do not paste critique full text into `board.md`.

### Chapter done (board-gated)

```text
design_clean   = clean | n/a
visual_clean   = clean where graphics units exist (else n/a)
macro_vc       = clean | n/a
quality_packet = ready
accept         = accepted
compose        = done
pdf            = path present
validate OK    → necessary but NOT sufficient alone
```

**validate green ≠ Visual CLEAN ≠ Accept ≠ chapter idle.** L2 must not mark portfolio idle until every locked row meets this checklist.

---

## Sit.2 / single-chapter board policy

When studio situation **2** (one chapter) needs durable resume, **reuse this board family** — do not invent a shadow studio board:

| Autonomy / context | Board? |
|---|---|
| L0 route-only, single short session | No |
| L1 single-unit single-session | Optional |
| L1+ multi-unit **or** continue later **or** L2 | **Create** `toolset/orchestration/book-production/<slug>/` with `scope: single-chapter` |
| User requests resume/status | Create if missing |

**Resume ownership:** if a board exists under book-production → **this skill** owns resume (studio sit.7). Studio must not keep a parallel schema.

---

## Routing rules (priority)

1. **Human gate open** → stop; do not skip H1/H2/H4/H5/H-Gfx.  
2. **P1 incomplete** and no design SoT → P1 before mass compose.  
3. Chapter **not frozen** and `brief_class: production` required → P2 / content path.  
4. Frozen, no brief → `media-brief` (P3).  
5. Brief done, ambitious units without form_spec → `media-brief` Form Spec (+ set `open_asset_scan`).  
6. Form Spec free-vision required, Design CLEAN, `open_asset_scan=required`, no source-scan/MANIFEST outcome → **`open-assets`** (before free gen).  
7. Scan resolved (or skip/optional), no graphics decision / module → `medical-graphics` free vision / realize.  
8. Graphics done, no accept → `media-brief` Accept (H2 if production; block asset Accept without rights outcome).  
9. Accept yes, no chapter typ → `compose-chapter` (+ multi-unit **chapter macro VC** before quality done).  
10. All target chapters composed → P7 assembly.  
11. Assembly PDF → P8 validate → P9 visual QA → P10 prepress → P11 proof.

**P4 open-assets rule:** unit-conditional specialist only — **not** a fixed empty phase for every chapter. Code/schema units: `open_asset_scan=skip`.

**Rollback** when:

| Signal | Go back to |
|---|---|
| Claim audit FAIL on production asset | P4 recreate; do not Accept asset |
| Accept revise | P3/P4 as noted |
| Validate claim fail | P6 compose (no claim rewrite — fix layout/embed) |
| Visual QA Must-see miss | P4/P6 |
| DPI fail on print asset | P4 refine/upscale or switch to code winner |
| Content block reopened | P2 / content-review (H3 if round≥2) |

---

## Autonomy charter (agree at kickoff)

| Level | Behavior |
|---|---|
| **L0 guided** | Only status + next step; Human starts each skill |
| **L1 semi** | Orchestrator runs specialist procedures in-session; stops at every chapter Accept |
| **L2 auto** | Runs P3–P8 across chapters; stops only at H1/H2/H4/H5/H-Gfx, caps, or errors |
| **L3 long-run** | L2 + durable board; user may leave; on resume continue; optional scheduled “status pulse” |

**L2 multi-chapter hard rule:** with `agent-only` / D4 H-Explore, **continue until portfolio idle** (all locked board rows done) — never pause after one chapter “for the Human chat” while rows remain todo. Detail: [`references/autonomy.md`](references/autonomy.md) · [`references/multi-chapter-explore.md`](references/multi-chapter-explore.md).

**Hard stops (all levels):** inventing clinical claims; agent-only freeze/proof; accept-asset on claim FAIL; 3rd Media↔Tech round without Human; production compose without Accept+freeze when production.

**Caps (inherit specialists):** free gens 2, refine 2, review rounds 2, Media↔Tech 2.

---

## Documentation duties (ALWAYS)

After **every** step the orchestrator owns:

1. **run-log.md** append:

```markdown
### [ISO-time] phase/chapter/unit — START|DONE|FAIL|BLOCKED|HUMAN
- skill: …
- action: …
- artifacts: …
- next: …
- evidence: (paths, compile exit, audit verdict)
```

2. **board.md** update cells + `last_updated`.  
3. **route.md** (current next only) from template.  
4. On Human stop: clear **what Human must do** + which file to sign.

Retroactive: same formats, mark `source: reconstructed`.

---

## Process — one autonomous tick

1. `read board + run-log + status script`  
2. Compute next action from routing rules  
3. If specialist work:
   - **Prefer executing** the specialist skill procedure in this agent turn when tools allow  
   - Else write route and instruct user/agent to load skill (L0)  
4. Verify artifacts  
5. Log + board  
6. Repeat or stop  

For **multi-hour:** keep writing board; do not rely on chat alone. User resumes:  
*“Resume book-production board `<book-id>` autonomy L2.”*

Optional: schedule periodic  
*“Read board `<book-id>`, continue autonomous tick or report blocked.”*  
via session scheduler if available — board remains SoT.

---

## Artifacts layout

```text
toolset/orchestration/book-production/<book-id>/
  kickoff.md          # plan + autonomy + content roots
  board.md            # SoT state
  run-log.md          # append-only history
  route.md            # current next only
  inventory.md        # optional chapter list from C
  notes.md            # human decisions
```

Templates: `templates/*.template.md`  
Status CLI: `./scripts/book-production-status.sh <book-id>`

---

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Persist board + run-log on disk | Rely only on chat memory for multi-hour |
| Stop at H1/H2/H4/H5/H-Gfx | Agent-sign freeze/proof |
| L2: continue to portfolio idle when agent-only | Premature stop after one chapter while rows todo |
| Route Form Spec before free vision | Skip claim audit for asset path |
| Route open-assets when `open_asset_scan=required` before free gen | Always-on open-assets / empty MANIFEST for code-only |
| Point to specialist playbooks | Rewrite Critical Claims |
| Document rollback targets | Silent infinite loops past caps |
| Reconcile FS vs board on resume | Invent chapter freeze status |
| Chapter done only after design_clean/visual_clean/macro_vc/quality_packet/accept/compose/pdf checklist | Claim done on validate OK alone |
| Enums + paths only in board cells | Critique full text or CLEAN proof in board.md |

---

## Kickoff prompt (user can paste)

```text
Book production kickoff.
content_root: <path to finished chapters>
book_id: <slug>
brief_class: production | exploration
autonomy: L0 | L1 | L2 | L3
print_target: screen | print-pdfx | both
Use skill book-production-orchestrator: create board, plan with me, then drive.
```

Prefer **`/studio`** if the user has not yet chosen full-book vs single-chapter vs content-only.

---

## Related

| | |
|---|---|
| **Front door / intake** | `toolset/skill-pack/studio/` · slash `/studio` |
| Runbook | `docs/BOOK-PRODUCTION-RUNBOOK.md` |
| Multi-chapter explore ops | [`references/multi-chapter-explore.md`](references/multi-chapter-explore.md) |
| Autonomy / L2 idle | [`references/autonomy.md`](references/autonomy.md) |
| Phase machine detail | [`references/phase-machine.md`](references/phase-machine.md) |
| Graphics playbook | `domains/medical/skill/medical-graphics/playbook/` |
| Media | `domains/medical/skill/media-brief/` |
| Open assets (conditional) | `domains/medical/skill/open-assets/` |
| Compose | `toolset/skill-pack/compose-chapter/` |
| C router | `domains/content-maturity/skill/content-orchestrator/` |
| Prepress | `prepress/README.md` |
| Checkpoints | `domains/content-maturity/checkpoints.md` |
| Collaboration Contract | [`../COLLABORATION-CONTRACT.md`](../COLLABORATION-CONTRACT.md) |

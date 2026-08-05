# Route table (studio → skills / CLI)

After intake, pick **next_skill** and optional **CLI**. Studio may **execute** the skill procedure in-session (L1/L2) or **stop with a route card** (L0).

**Controller law:** [`COLLABORATION-CONTRACT.md`](../../COLLABORATION-CONTRACT.md) — who leads (studio vs book-production vs form-lab vs C); board resume = book-production; no shadow board.

---

## Primary routes

| Situation | next_skill | CLI / paths |
|---|---|---|
| 1 Full book kickoff | `book-production-orchestrator` | board under `toolset/orchestration/book-production/<id>/` |
| 1/7 Resume / status | `book-production-orchestrator` | `./scripts/book-production-status.sh <id>` |
| 2 Chapter pipeline start (no freeze, production) | Human **H1** or `content-orchestrator` | freeze template in `domains/content-maturity/` |
| 2 Content draft | `content-review` via `content-orchestrator` | review-report |
| 2 Frozen / exploration content → design | `media-brief` | `domains/medical/briefs/`, templates; set `open_asset_scan` per unit |
| 2 Design CLEAN + `open_asset_scan=required` | **`open-assets`** | source-scan + MANIFEST `accepted`\|`gap` **before** free gen |
| 2 Design CLEAN + scan skip/optional resolved → graphics | `medical-graphics` | `bookkit graphics …`; libs `domains/medical/lib/typst/` |
| 2 Graphics candidates ready → accept | `media-brief` Accept | **H2** if production; rights row if asset carrier |
| 2 Accept yes → typ | `compose-chapter` | embed winners; multi-unit → **chapter macro VC** then `bookkit validate` / `build` |
| 3 Content only | `content-orchestrator` | C templates |
| 4 Graphics only | `media-brief` and/or `medical-graphics` | see situations.md §4 |
| 4 Open/free images, licenses, attribution | **`open-assets`** | MANIFEST/CREDITS; before free vision when realism needed |
| 5 Compose only | `compose-chapter` | `./scripts/bookkit validate …` |
| 6 Platform | `bookkit` | doctor, init, examples, CONSUMER.md |
| **9 Form Lab (lab-learning)** | **`form-lab-orchestrator`** | board under `toolset/orchestration/form-lab/<lab-id>/`; Studio **handoff only**; skill default **L2 autodrive-to-complete** (full T→S + harvest) |
| 7 Resume form-lab board | `form-lab-orchestrator` | default: `Resume … autonomy L2 autodrive-to-complete`; opt-out: Orchestrator only |

---

## Hand-off phrases (L0 or session switch)

Give the user a **pasteable** next message when useful:

**Full book:**
```text
Skill: book-production-orchestrator
Kickoff book_id: <id>
content_root: <path>
brief_class: production|exploration
autonomy: L1|L2
print_target: screen|print-pdfx|both
```

**Resume:**
```text
Resume book-production board <book_id> autonomy L2
```

**Media (design council):**
```text
Skill: media-brief
Content: <path>
Genre: …
Write brief + form-specs + design-contracts. Design Critic until Design CLEAN.
No production .typ. No free vision until Design CLEAN.
```

**Open-assets (after Design CLEAN when scan required/optional):**
```text
Skill: open-assets
Unit: <unit_id> · open_asset_scan: required | optional | skip
  (skip → do not run open-assets; no MANIFEST ceremony)
Job brief: learner_job / must_see / realism_required / clinical_risk
Run source scan → Rights + Clinical gates → MANIFEST + CREDITS.
Outcome: accepted (embed path) | gap (document; demote to Typst simple — no silent AI-as-photo).
Then hand back to medical-graphics free vision / realize.
Production callers: sit.2 · book-production P4 · G0b — not only sit.4 / Pass O.
```

**Graphics (realize + visual council):**
```text
Skill: medical-graphics
Design CLEAN packet: <form-spec + contract + design-critique clean>
open_asset_scan: required|optional|skip (from Media); if required → MANIFEST outcome first
Track: free-vision-ambition (default) | grammar-only (opt-in only)
G0→G0b (if needed)→free vision→claim audit→harvest→atoms→realize→Visual Critic on PNG until Visual CLEAN.
Caps: 2 free + 2 refine + 5 visual rounds. No pin-monotone / code-leak / self-CLEAN.
If production-bridge harvest exists for job class: cite default or override after Design CLEAN (advisory).
```

**Compose:**
```text
Skill: compose-chapter
Accept (Design+Visual CLEAN): <path> · Content: <path> · graphic_decisions: <path>
Embed Accept winners only. Multi-unit quality chapter → chapter macro VC on full-page PNGs
(cap ~2 assembly rounds → H-Explore). Then bookkit validate (not a design pass).
production-bridge: read-if-present as comment only — not whitelist / not Accept substitute.
```

**Sit.2 step reminder (sequence):**
```text
Design CLEAN → open-assets iff open_asset_scan requires it → free vision → unit VC
→ packet → Accept → compose → chapter macro VC (multi-unit) → validate
```

**Form Lab (situation 9 — handoff only; skill autodrives):**
```text
Skill: form-lab-orchestrator
lab_id / portfolio: <slug>
content pins: <paths>
mission_class: lab-learning
autonomy: L2 autodrive-to-complete
Kickoff if new; else resume. Full program to COMPLETE; do not stop after L0 handoff.
Do not run medium craft inside studio (form-lab skill does after handoff).
```

**Form Lab resume (default):**
```text
Resume Form Lab board <lab-id|portfolio-id> autonomy L2 autodrive-to-complete.
Skill: form-lab-orchestrator.
Read board.md + run-log.md + route.md. Continue full program to COMPLETE.
```

**Foundation craft (load-when-needed — not Accept owners):**
```text
Load typst-writer; if #pin* load pinit-workflow;
if @preview/print load typst-extension; consumer API load bookkit.
```

---

## Parallel exploration (allowed)

Exploration briefs/graphics **may** run **before** freeze — but:

- Label `brief_class: exploration`  
- Do **not** claim production compose done  
- Production accept requires freeze pin  

Studio must say this explicitly when users want “fast graphics first”.

---

## production-bridge (advisory — never a gate)

When a Form Lab harvest exists for the topic/job class, specialists **may** consult:

```text
toolset/orchestration/form-lab/**/harvest/production-bridge.md
# preferred sample (lab program complete):
toolset/orchestration/form-lab/portfolio-2026-08-d/harvest/production-bridge.md
```

**Rules:** cite-if-present after Design CLEAN / at carrier choice · **not** Accept · **not** Visual CLEAN waive · **not** catalog cage · **no** filesystem crawler CLI (prose path only).

---

## Product boundaries (routing must respect)

| From | Must not |
|---|---|
| **C** content | Layout craft as SoT; agent-only freeze |
| **B** media | Write production `.typ`; invent claims |
| **B** graphics | Invent Form Spec / claims; endless refine loops |
| **A** compose | Invent didactic ideal when brief exists; own web app |
| **W** web | Content/asset SoT; print Accept authority |

**Production order:** C Freeze → B Accept (`channel_scope: print|web|both`) → A and/or W.  
**Hard checks:** `./scripts/bookkit boundaries check-tree` · `check-release <package.yaml>`.  
**Contracts:** `contracts/` · policy: `devtracks/PRODUCT-BOUNDARIES.md` v0.3.1 · consensus: `devtracks/CONSENSUS-v0.md` · short law: `toolset/skill-pack/COLLABORATION-CONTRACT.md` · W scaffold: `channels/web/`.

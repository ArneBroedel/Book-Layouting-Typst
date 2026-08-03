# Situation → best entry (studio)

Use this when mapping a user goal to a workflow. Prefer the **smallest** path that still hits quality bars.

**Law:** [`COLLABORATION-CONTRACT.md`](../../COLLABORATION-CONTRACT.md) — controllers, greens, done.  
**Negatives:** sit.**2** ≠ Form Lab · sit.**9** only lab-learning · “layout this chapter” ≠ Form Lab · Form Lab COMPLETE ≠ production Accept.

---

## 1 — Full book → layout + graphics + PDF/print

**Signals:** multiple chapters, “Kursbuch fertig machen”, print, multi-day drive, board.

**Entry:** `book-production-orchestrator` kickoff  
**Board:** `toolset/orchestration/book-production/<book-id>/`  
**Phases:** P0–P11 (see that skill + `docs/BOOK-PRODUCTION-RUNBOOK.md`)

**Must collect:** book_id, content_root, brief_class, print_target, autonomy, genre mix.

**Human gates:** H1 per production chapter, H2 accepts, H4 proof, H5 imprimatur optional, H-Gfx if risky assets.

---

## 2 — One chapter → optimized layout (+ graphics)

**Signals:** single MD/chapter, “dieses Kapitel layouten”, one Form Spec set.  
**Not Form Lab:** sit.2 is production/exploration mini-pipeline — **not** lab-learning. For medium-extreme research use situation **9** only.

**Done (Contract):** packet index + Accept + embed winners + validate; multi-unit quality PDF also needs **chapter macro VC**. See [`COLLABORATION-CONTRACT.md`](../../COLLABORATION-CONTRACT.md) §8.

**Entry:** studio **hosts** mini-pipeline (not necessarily a full board):

```text
content ready?
  no  → content-review / author (C)
  yes → freeze? (H1 if production)
        → media-brief: Brief + Form Specs + Design Contracts
              (Media sets open_asset_scan: required | optional | skip per unit)
        → Design Critic loop until Design CLEAN
        → open-assets branch (unit-conditional — NOT always-on):
              required → source scan + MANIFEST outcome accepted|gap before free gen
              optional → light scan when realism/icons may help
              skip     → one-line Decision Note / packet field (code-only / schema OK)
        → medical-graphics: free vision / realize (only after scan branch resolved)
              → claim audit → harvest → realize
        → unit Visual CLEAN (PNG; budget → Human)
        → quality packet → media-brief Accept (AX; H2 if production)
        → compose-chapter (embed Accept winners)
        → (multi-unit) chapter macro VC on assembled full-page PNGs
              (cap ~2 assembly rounds → H-Explore / stop unclean)
        → bookkit validate (+ build)
        → optional prepress / proof (H4)
```

**open-assets is unit-conditional only** — never a fixed always-on phase. Code/schema units: `skip` without MANIFEST ceremony. Asset/third-party embed: Accept blocked without rights outcome (`accepted` | `gap` → demote to Typst alternative).

**production-bridge (advisory):** if a Form Lab harvest bridge exists for the job class (e.g. `toolset/orchestration/form-lab/**/harvest/production-bridge.md` or portfolio harvest), specialists **cite-if-present** after Design CLEAN — never hard gate, never catalog cage.

**Route card:** `graphics_track`, `design_clean`, `visual_clean`, `open_asset_scan` (per unit or chapter summary), `quality_packet`, `open_assets`, `macro_vc` when multi-unit. No grammar-only chapter default. Validate OK ≠ done.

### Sit.2 durable board policy (one board family — no shadow studio board)

| Autonomy / context | Board? |
|---|---|
| L0 route-only, single short session | **No** |
| L1 single-unit single-session | Optional |
| L1+ multi-unit **or** “continue later” **or** L2 | **Create** `toolset/orchestration/book-production/<slug>/` with `scope: single-chapter` |
| User requests resume/status | Create if missing |

Schema = book-production templates (`board` / `route` / `kickoff`). Resume owner when board exists → **book-production-orchestrator** (situation **7**). Studio must **not** invent a second board type.

---

## 3 — Content only (review / freeze)

**Signals:** draft messy, claims audit, “lektorieren”, not layout yet.

**Entry:** `content-orchestrator` → `content-review`  
**Caps:** max 2 review rounds → **H3**  
**Then:** H1 freeze → hand back to studio or media-brief / book-production.

---

## 4 — Graphics / Form Spec focus

**Signals:** “nur die Grafik”, free vision, urgency ladder, mimic, spatial unit.

**Entry:**

| Have Form Spec? | Path |
|---|---|
| No | `media-brief` Form Spec first |
| Yes | `medical-graphics` playbook from G0/G1 |
| Need free/open photos, icons, licenses, credits | **`open-assets`** (source scan → MANIFEST/CREDITS) **before** free vision when realism/icons needed |

**CLI:** `./scripts/bookkit graphics vision|refine|manifest`  
**Libs:** `domains/medical/lib/typst/`  
**Gold:** `domains/medical/briefs/INDEX.md`  
**Track:** expect `free-vision-ambition` for real visual units; harvest after free vision; pin-monotone → revise.  
**Open assets:** skill `open-assets` · policy `domains/medical/OPEN-ASSET-POLICY.md`

Do **not** Accept asset on claim FAIL. Anatomy pause → H-Gfx.

---

## 5 — Compose / validate only

**Signals:** Accept exists, “nur Typst bauen”, validate green, embed winners.

**Entry:** `compose-chapter`  
**CLI:** `./scripts/bookkit validate …` (production: `--profile production --freeze …`)  
**Policy:** `toolset/compose/CREATIVE-COMPOSE.md`

---

## 6 — Platform / learn / smoke

**Signals:** new consumer, bookkit init, fonts, showcase, “wie baue ich?”.

**Entry:** `bookkit` + `docs/CONSUMER.md`  
**CLI:**

```bash
./scripts/bookkit doctor --root .
./scripts/bookkit build --root . --entry toolset/examples/minimal/main.typ --out dist/toolset/minimal.pdf
./scripts/bookkit catalog check
```

Showcase dogfood: `src/main.typ` via `./scripts/build.sh fast` (not content SoT for other works).

---

## 7 — Resume / status

**Signals:** “weiter”, “Status”, overnight, book_id known or under `toolset/orchestration/book-production/`.

**Entry:** `book-production-orchestrator` status/resume  
**CLI:** `./scripts/book-production-status.sh <book-id>`  
**If form-lab board** under `toolset/orchestration/form-lab/`: situation **9** → `form-lab-orchestrator` resume (Orchestrator only).  
**If board exists under book-production:** resume owner = **book-production-orchestrator** — studio does **not** keep a shadow board; hand off with book_id.  
**If no board:** studio intake → create kickoff (sit.1) or sit.2 mini-pipeline; create durable board only per sit.2 policy (`scope: single-chapter` when multi-session/L2).  
**On resume:** reconcile quality cells (`design_clean`, `visual_clean`, `macro_vc`, `quality_packet`, `open_assets`) against artifact trees — do not invent CLEAN from chat.

---

## 8 — Truly unclear

Run short interview ([`intake.md`](intake.md)):

1. End state (PDF? print? only brief? only graphic? form research?)  
2. How much content is ready?  
3. One unit vs whole book?  
4. Exploration vs production quality bar vs **lab-learning** (Form Lab)?  

Then map to 1–7 or **9** and confirm with the user.

---

## 9 — Form Lab (lab-learning medium extremes)

**Signals:** “Form Lab”, medium extremes, T/C/V/R passes, form vocabulary, “welche Form gewinnt”, clean restart wave, full medium program, best-of fusion, harvest production-bridge.  
**Only lab-learning** — never silent default for sit.2 chapter layout. Form Lab L2 = autodrive-to-complete (≠ production L2). COMPLETE ≠ production Accept.

**workflow_class:** `lab-learning`  
**Entry:** **handoff** to `form-lab-orchestrator` (that skill’s **default = L2 autodrive-to-complete**)  
**Board:** `toolset/orchestration/form-lab/<lab-id>/`  
**Phases:** L0–L7 (kickoff → T→C→V→R iterative → matrix → **S best-of** → **harvest**)

**Studio must:**

1. Confirm lab-learning intent (not silent default for “layout this chapter”).  
2. Collect: lab_id (or new), content pin paths, portfolio vs single lab.  
3. Emit route card with `situation: 9`, `workflow_class: lab-learning`, `next_skill: form-lab-orchestrator`, `autonomy: L2` (unless user asked route-only).  
4. **Hand off** — do **not** run Pass T–R craft inside studio; the form-lab skill drives craft after handoff.

**Studio must not:**

- Execute the full medium-stack craft **as studio** (wrong skill body)  
- Force route-only / “stop after handoff” unless the user asked  
- Mark Form Lab COMPLETE  
- Route ordinary production chapter goals here  

**Must collect:** lab_id or “new”, content pins, whether resume existing board, D1–D8 if kickoff.

**Human gates:** kickoff D1–D8; optional H-Pass / Human S-rank (often waived under autodrive); harvest before COMPLETE.

**Pasteable handoff:**

```text
Skill: form-lab-orchestrator
lab_id / portfolio: <slug>
content pins: <paths>
mission_class: lab-learning
autonomy: L2 autodrive-to-complete
Kickoff if new; else resume. Full program T→C→V→R→matrix→S best-of→harvest → COMPLETE.
Do not stop after L0 handoff.
```

**If user actually wants production chapter:** redirect to situation **2** (or **1** for full book).

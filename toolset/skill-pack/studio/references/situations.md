# Situation → best entry (studio)

Use this when mapping a user goal to a workflow. Prefer the **smallest** path that still hits quality bars.

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
**Not Form Lab:** for medium-extreme research use situation **9**.

**Entry:** studio **hosts** mini-pipeline (not necessarily a full board):

1. Content mature? → else `content-review`  
2. Production? → **H1 freeze**  
3. `media-brief` → brief + form-specs + **design-contracts** → Design Critic until **Design CLEAN**  
4. Visual units → `medical-graphics` (track default **free-vision-ambition**; harvest→atoms; realize) → **Visual Critic on PNG until Visual CLEAN**  
5. Accept only on quality packet (H2 if production; exploration still needs Visual CLEAN)  
6. `compose-chapter` → embed Accept winners → `bookkit validate` / build  

**Route card:** `graphics_track`, `design_clean`, `visual_clean`. No grammar-only chapter default. Validate OK ≠ done.

**Optional:** create a one-chapter board under book-production if user wants resume later.

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
**If no board:** studio intake → create kickoff or situation 2.

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

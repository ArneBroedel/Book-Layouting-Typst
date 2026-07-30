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

**CLI:** `./scripts/bookkit graphics vision|refine|manifest`  
**Libs:** `domains/medical/lib/typst/`  
**Gold:** `domains/medical/briefs/INDEX.md`  
**Track:** expect `free-vision-ambition` for real visual units; harvest after free vision; pin-monotone → revise.

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
**If no board:** studio intake → create kickoff or situation 2.

---

## 8 — Truly unclear

Run short interview ([`intake.md`](intake.md)):

1. End state (PDF? print? only brief? only graphic?)  
2. How much content is ready?  
3. One unit vs whole book?  
4. Exploration vs production quality bar?  

Then map to 1–7 and confirm with the user.

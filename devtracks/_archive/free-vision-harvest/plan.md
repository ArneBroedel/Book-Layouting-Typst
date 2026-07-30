# Plan — Free-Vision Harvest

**Spec:** [spec.md](spec.md)  
**Mode:** process / skills / templates (no Typst feature code required for v1)  
**Status:** **implemented** 2026-07-30 (Human green-light + D1–D4 locked)

---

## 0. Intent (north star)

```text
Ambition track chosen explicitly
        │
        ├─ grammar-only ──► code pin-swap (no free vision theater)
        │
        └─ free-vision-ambition
                │
                ▼
           G1 free vision
                │
                ▼
           G2 claim audit (PASS | DRIFT | FAIL)
                │
                ▼
           Harvest note (layout cues ALWAYS)
                │
        ┌───────┴────────┐
        ▼                ▼
   PASS: asset path   DRIFT: refine surgical
   and/or recreate    OR recreate-with-harvest
   with hierarchy     (composition port mandatory)
        │                │
        └───────┬────────┘
                ▼
        Decision Note: winner + harvest proximity
                ▼
        Media Accept: free-vision proximity gate
                ▼
        Compose: embed winner (visible inheritance)
```

**Anti-pattern to kill:** free vision → DRIFT → “just make a table with pins” with no harvest.

---

## 1. Concepts to introduce (shared vocabulary)

| Term | Meaning |
|---|---|
| **Track** | Per visual unit: `grammar-only` or `free-vision-ambition` |
| **Harvest** | List of **non-claim** layout cues taken from free vision (zones, weight, peel, rails, dual-coding) |
| **Hierarchy-faithful recreate** | Code/hybrid that ports harvest cues; not pin dump only |
| **Free-vision proximity** | Accept/Media criterion: under scan stress, winner still “feels like” the free vision job |
| **Pin-monotone** | Code that only restates pins without harvest — **revise** on free-vision-ambition track |

Harvest may **never** invent clinical labels. Only composition/weight/geometry/chrome.

---

## 2. Work packages (implementation order)

### WP1 — G0 track decision (before any free gen)

**Files (SoT under `domains/medical/skill/medical-graphics/`):**

- `playbook/01-from-form-spec.md`  
- `playbook/00-overview.md` (one diagram line)  
- `playbook/10-kl-chapter-pipeline.md` §4 table rewrite  
- `SKILL.md` ALWAYS/NEVER + pipeline blurb  
- Symlinks: `.github/skills/medical-graphics`, `.grok/skills/…` (no fork)

**Content:**

1. After Form Spec / ambition flag, Graphics **must** set track:

| Track | When | Free vision? |
|---|---|---|
| `free-vision-ambition` | **Default posture** for real visual units (urgency, mimic, cues, discrimination graphic, peels, dashboards, criteria-by-picture, novel chrome) | **Yes** (G1 mandatory unless H-Gfx block or documented Human skip) |
| `grammar-only` | **Opt-in only:** pure re-pin of already harvested pattern with no new chrome job; explicit Media/Human skip; time-box documented | **No** (do not run free gen “for show”) |

2. Record track in working Decision Note draft / content-map ambition row (already exists for KL — align wording).

3. Explicit: **free-vision-ambition is the normal path** for didactic graphics. `grammar-only` is allowed when consciously chosen — not the silent default for kl-kurz or any chapter type.

**Exit:** Agent cannot start G1 without a written track per unit.

---

### WP2 — Harvest note artifact (after G1, every free vision)

**New template:** `domains/medical/templates/graphic-harvest.template.md`

Suggested path for filled notes:

- `domains/medical/briefs/<slug>.harvest.md`  
  **or** section inside `*.graphics.md` (prefer dedicated file if multi-unit chapter)

**Required sections:**

```markdown
# Graphic Harvest — <slug> / <unit_id>

- vision_path:
- form_spec_path:
- claim_audit: PASS | DRIFT | FAIL
- track: free-vision-ambition

## Composition cues to port (non-claim)

| cue_id | what free vision did | port to code/hybrid as | priority |
|---|---|---|---|
| H1 | e.g. 4-tile matrix + gestalt header | grid 2×2 + header band | must |
| H2 | solid bottom escape rail | full-width danger bar | must |
| H3 | row-4 red outline peel | accent stroke on last mimic row | should |
| … | | | |

## Explicitly NOT porting

| free vision chrome | reason |
|---|---|
| EN titles / invented labels | claim audit |
| deep anatomy | H-Gfx pause |

## Target carrier bias

code | hybrid | asset | undecided
```

**Playbook hooks:**

- `02-free-vision.md` step 9: “Write harvest note **before** or **with** claim audit (can draft composition cues even if labels DRIFT)”  
- `03-claim-audit.md`: verdict table adds column/row “harvest still required if track=ambition”  
- `04-recreate-typst.md`: step “port harvest must-rows first, then pins”

**Exit:** No free-vision unit without a harvest file/section.

---

### WP3 — Realize ladder: DRIFT path rewrite

**Files:** `03-claim-audit.md`, `04-recreate-typst.md`, `06-refine-raster.md`, `00-overview.md`

**New decision table after audit:**

| Audit | Track | Default next | Forbidden |
|---|---|---|---|
| PASS | free-vision-ambition | recreate hierarchy-faithful **and/or** refine→accept-asset path | pin-monotone code as winner |
| DRIFT | free-vision-ambition | (1) surgical refine for labels/icons **or** (2) recreate-with-harvest (ports cues, fixes labels in Typst) | drop harvest; “table only” |
| FAIL | free-vision-ambition | recreate from Form Spec + harvest cues that are non-clinical; **never** accept-asset free PNG | ship free PNG |
| any | grammar-only | code transfer | free gen |

**Recreate DoD (hierarchy-faithful):**

Checklist in 04:

- [ ] All harvest **must** cues present in spike  
- [ ] Claim pins copy-through  
- [ ] Optional: side-by-side compare free vs recreate (`spike-compare`) when free PNG exists  
- [ ] `*.graphics.md` lists harvest_path + which cues landed  

**Exit:** DRIFT no longer auto-means “ignore free vision”.

---

### WP4 — Decision Note + Accept templates

**Files:**

- `domains/medical/templates/graphic-decision.template.md`  
- `domains/medical/templates/accept-record.template.md`  
- `media-brief` Accept procedure in `SKILL.md` + `references/design-reasoning.md` §5 if exists  
- Playbook `08-accept-handoff.md`

**Decision Note additions:**

| unit_id | track | harvest_path | harvest_must_ported? | free-vision proximity (yes/partial/no) | winner |

**Accept rubric additions (Media):**

- [ ] If track = free-vision-ambition: winner shows free-vision proximity (not pin-monotone)  
- [ ] Harvest must-cues listed as met or explicitly waived with reason  
- [ ] Embed path filled for Tech  

**Accept outcomes:**

| Situation | Decision |
|---|---|
| Ambition + pin-monotone code | **revise** (Graphics: port harvest) |
| Ambition + hierarchy code or asset PASS | **accept** |
| Grammar-only + clean code | **accept** (proximity N/A) |

**Exit:** Media cannot Accept ambition unit without proximity consideration.

---

### WP5 — Studio + compose-chapter thin wires

**Studio** (`toolset/skill-pack/studio/` / `.github/skills/studio`):

- Situation 2 / 4 intake: if visual ambition heavy → expect free-vision-ambition track for ≥1 unit  
- Route card field: `graphics_track: grammar-only | free-vision-ambition | mixed`  
- Do **not** recommend “skip free vision to save time” when brief already set ambition required  

**compose-chapter:**

- Feasibility / compose header: `graphic_decisions` + harvest path  
- Embed Accept winners; if Accept says hierarchy code module, do not replace with plain styled-table  
- One line in CREATIVE-COMPOSE or skill: “post-Accept: free-vision proximity winners are authoritative”

**Exit:** Orchestration does not short-circuit harvest.

---

### WP6 — KL pipeline alignment

**File:** `playbook/10-kl-chapter-pipeline.md`

Rewrite §4 G table (Human D1: **no grammar-only default**):

| Unit class | Default track | Realize |
|---|---|---|
| Urgency / discrimination / mimic / cues (visual) | **`free-vision-ambition`** | free → harvest → hierarchy-faithful recreate or asset |
| Novel chrome / peel / dashboard | **`free-vision-ambition`** | same |
| ABCDE / FAST criteria-by-picture | **`free-vision-ambition`** | audit semantics + harvest |
| Spatial anatomy | free vision **blocked** without H-Gfx | non-body free vision or code; H-Gfx if true anatomy |
| Conscious re-pin only (documented) | **`grammar-only` opt-in** | code pin-swap, no free gen |

Add § “Harvest before Accept” one short paragraph.

**Exit:** KL operators see one consistent story.

---

### WP7 — Docs / examples (light)

- One paragraph in `Guides/Medical-Graphics-Playbook.md` (if present) or skill-only if guide is long  
- Optional: annotate CRPS as **negative example** (free vision not harvested) in `examples/INDEX.md` or harvest track note — **not** rework CRPS PDF in this track unless Human asks  
- `briefs/INDEX.md`: only if we promote a harvest gold later  

**Exit:** Discoverable without requiring CRPS retrofit.

---

### WP8 — Verification (when implementing)

| Check | How |
|---|---|
| Templates exist and linked from playbooks | file + grep |
| Skill ALWAYS/NEVER mentions track + harvest | read SKILL.md |
| No policy contradiction (DRIFT still cannot accept-asset) | 03 + 06 |
| Unit test? | none for prose skills; optional skill-eval later |
| Dry-run mental: CRPS-like unit | walk G0→G4 on paper against new checklist |

No full book compile required for policy-only ship.

---

## 3. File change map (v1)

| Path | Action |
|---|---|
| `domains/medical/templates/graphic-harvest.template.md` | **create** |
| `domains/medical/templates/graphic-decision.template.md` | extend |
| `domains/medical/templates/accept-record.template.md` | extend (proximity) |
| `domains/medical/templates/form-spec.template.md` | optional: track hint / ambition already has free-vision flag — align wording only |
| `domains/medical/skill/medical-graphics/playbook/00–04,06,08,10` | edit |
| `domains/medical/skill/medical-graphics/SKILL.md` | edit |
| `domains/medical/skill/media-brief/SKILL.md` | Accept proximity |
| `domains/medical/skill/media-brief/references/design-reasoning.md` | §5 rubric if present |
| `toolset/skill-pack/studio/` + routes ref | thin |
| `toolset/skill-pack/compose-chapter/` or `.github/skills/compose-chapter` | thin embed note |
| `Guides/Medical-Graphics-Playbook.md` | short section if still canonical |

**Do not edit:** package Typst foundation, bookkit CLI engines (unless later automation).

---

## 4. Phasing

| Phase | Scope | Done when |
|---|---|---|
| **P0** | This plan approved | Human says implement |
| **P1** | WP1–WP3 (track + harvest + DRIFT ladder) | playbooks + harvest template |
| **P2** | WP4–WP5 (Accept + studio/compose wires) | templates + skills |
| **P3** | WP6–WP7 (KL pipeline + guide) | one coherent operator path |
| **P4** | Optional: retrofit one unit (e.g. CRPS cues) as harvest demo | only if requested |

**Estimate:** P1–P3 = one focused session (docs/skills only). P4 separate.

---

## 5. Risks & mitigations

| Risk | Mitigation |
|---|---|
| Agents still skip harvest under time pressure | ALWAYS in SKILL; Accept revise if proximity fails |
| Harvest becomes claim invention | Template forbids clinical text in harvest rows |
| Double work refine + recreate | Caps: choose one primary path after DRIFT |
| “Everything becomes free vision” | grammar-only remains first-class for transfers |
| Anatomy creep | H-Gfx pause unchanged |
| Commit large DRIFT PNGs | existing MANIFEST accepted rule |

---

## 6. Relation to other mid-term items (out of scope here)

| Later item | Interaction |
|---|---|
| L2 Human stop before Accept | Complements proximity Accept; separate |
| Draft content-check / claims | Separate; harvest is visual only |
| Pilot template / numbering | Separate layout hygiene |
| INDEX / form-library harvest | After durable new pattern appears via harvest |

---

## 7. Definition of Done (track complete)

- [x] Spec criteria S1–S7 met in written skills/templates  
- [x] Playbook 10 KL path consistent  
- [x] No contradiction with claim-audit / anatomy pause  
- [x] Human can run next KL unit with checklist “track → free? → harvest → realize → proximity Accept”  
- [x] Plan footer `## Harvested into` when done → archive track (archive when Human confirms)  

### CRPS counterfactual (dry-run — no code rework)

| Step | CRPS pilot (as shipped) | With harvest policy |
|---|---|---|
| G0 track | Implicit ambition (free gen ran) | Explicit `free-vision-ambition` per unit |
| G1 free vision | Ran (mimic/cues PNGs) | Same |
| G2 audit | DRIFT-ish labels | Same safety |
| Harvest | **Missing** | Must list hierarchy/chrome (tiles, rails, peel) |
| G3 recreate | Pin-faithful tables/modules | Hierarchy-faithful port of harvest must-cues |
| Accept proximity | Not gated | Pin-monotone → **revise** |
| Outcome | Free vision looked unused | Winner must visibly inherit free-vision composition |

## Harvested into

| Target | What |
|---|---|
| `domains/medical/templates/graphic-harvest.template.md` | New harvest artifact |
| `domains/medical/templates/graphic-decision.template.md` | Track, harvest, proximity columns |
| `domains/medical/templates/accept-record.template.md` | Free-vision proximity gate |
| `domains/medical/templates/form-spec.template.md` | Track hint |
| `domains/medical/skill/medical-graphics/` | Playbooks 00–04, 06, 08, 10 + SKILL + refs |
| `domains/medical/skill/media-brief/` | Accept procedure + design-reasoning §5 + kl-form-space G/A |
| `toolset/skill-pack/studio/` | Route card `graphics_track`, situations 2/4, routes |
| `toolset/skill-pack/compose-chapter/` | Embed proximity winners |
| `toolset/compose/CREATIVE-COMPOSE.md` | Track + harvest in graphic mode |
| `Guides/Medical-Graphics-Playbook.md` | §5b track/harvest paragraph |
| `medical-graphics/examples/INDEX.md` | CRPS negative harvest lesson |

---

## 8. Human decisions (locked 2026-07-30)

| # | Decision |
|---|---|
| **D1 Track default** | **No chapter-wide or genre-wide `grammar-only` default.** Free vision is not “reserved for exceptions.” Each unit still gets an **explicit** track, but the **preferred default posture** is **`free-vision-ambition`** whenever the unit is a real visual/didactic graphic (urgency landscape, mimic, cues, discrimination-as-graphic, dashboards, peels, criteria-by-picture, …). `grammar-only` is **opt-in** when Media/Human consciously choose pure pin-swap transfer (e.g. second language of an already harvested pattern, time-box, or explicit skip) — not the silent baseline for kl-kurz. |
| **D2 Harvest artifact** | Single-unit: harvest **section inside `*.graphics.md`**. Multi-unit chapter: dedicated `*.harvest.md` (or per-unit harvest sections clearly headed in one graphics file). |
| **D3 CRPS** | Policy-first ship; CRPS retrofit only if later requested as demo. |
| **D4 Carrier after PASS** | Hierarchy-faithful **code recreate first**; prefer **code if ≈ equal** to free vision after harvest port. **Asset/hybrid** when chrome/geometry cannot be matched fairly in code (or after A/B). Still no accept-asset on FAIL audit. |

### Implication for WP1 / WP6 tables

**Do not** write:

> Urgency / standard mimic → default grammar-only  

**Do write:**

| Unit class | Default track posture | `grammar-only` only if |
|---|---|---|
| Urgency, mimic, cues, discrimination graphic, novel chrome, criteria-by-picture | **`free-vision-ambition`** | Explicit Media/Human skip (documented), pure re-pin of **already harvested** module with **no** new chrome job, or H-Gfx block (anatomy) → non-body alternative may be code without free vision |
| Pure prose / no graphic object | `none` (no G1) | — |

Agents **must still name the track** per unit (no silent free gen, no silent skip).  
**Forbidden:** free vision run with no harvest; **also forbidden:** ambition unit → pin-monotone code without harvest proximity.

---

## 9. Implementation kickoff checklist (when authorized)

```text
1. Create graphic-harvest.template.md
2. Patch medical-graphics playbooks 00,01,02,03,04,06,08,10 + SKILL.md
3. Patch media-brief Accept + design-reasoning rubric
4. Patch decision + accept templates
5. Thin studio + compose-chapter notes
6. Guide one-pager / paragraph
7. Self-check against CRPS counterfactual (document in plan notes, no code required)
8. Commit: docs(skills): free-vision harvest track and accept proximity
```

**Archived:** 2026-07-30 → `devtracks/_archive/free-vision-harvest/`

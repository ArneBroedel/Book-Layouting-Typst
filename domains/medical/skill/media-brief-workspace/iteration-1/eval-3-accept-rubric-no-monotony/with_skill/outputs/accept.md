# Accept record (Media) — exploration

- **chapter_id / slug:** KL U-urgency (+ U-scope) — tech spike review
- **brief_path:** (eval scenario; reference ideal) `domains/medical/briefs/kl-u-urgency-scope.form-spec.md` / KL form-space shortlist US-A
- **form_spec_path:** `domains/medical/briefs/kl-u-urgency-scope.form-spec.md`
- **feasibility_path:** (described Tech spike — compile green)
- **graphics_decision_path:** n/a (code spike only)
- **spike_paths:** Tech spike (compiled green; stacked generic boxes)
- **date:** 2026-07-26
- **media_reviewer:** media-brief (Accept rubric §5 + KL ontology v1.1)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **revise** | Compile-green is **not** Accept. Spike fails Form Spec Must-see, Accept rubric (urgency flatten, box monotony), and KL form-language invariants. Exploration — no production compose. |
| U-urgency TIME stack (T1–T4) | **revise** | T1 and T4 have **equal visual weight** in generic stacked boxes. Loudness must encode urgency: T1 ≫ T2 ≫ T3 ≫ T4 (size/fill/left bar + label; solid danger **only** on T1). Flat stack reads as equal options, not a priority landscape. |
| U-scope | **revise** / near-**reject** of this layout choice | SCOPE rendered as a **fifth grey ladder step** under TIME with in-figure caption **„keine Dringlichkeitsstufe“**. That is (1) SCOPE-as-tier / grey “T5”, (2) **form-meta inside the graphic** (forbidden). Separation must be **self-evident from geometry**, not explained in print. |
| Chrome / labels | **revise** | English stage chrome **„Action payload“** is forbidden (ontology form-language rule; Form Spec non-goals: no EN stage titles). Use German content/action chrome only; ACTION is payload *inside* each TIME tier, not a labeled third axis. |
| Page rhythm / monotony | **revise** | Entire unit is **box monotony** (same generic callout stack). Flows must look like a weighted TIME landscape + orthogonal SCOPE frame, not tinted equal boxes. |

**Not bare accept.** Do not open compose on this spike. Round counts as Media↔Tech iteration 1 of max 2 before Human.

## Graphic winners (if Decision Note / A/B)

| unit_id | accepted winner (code\|asset\|hybrid) | form_spec Must-see met? | note |
|---|---|---|---|
| U-urgency + U-scope | **none** | **no** | Spike not accepted. Prefer **code** carrier next (US-A dual-axis); free-vision optional only if code fails Must-see after real attempt. |

## If revise

What must Tech change before any re-Accept / compose:

1. **Restore urgency weights** — T1 visually and by label ≠ T4 (and ≠ T2). Encode T1 ≫ T2 ≫ (T3 if present) ≫ T4 via size, fill, left-bar, typography; solid red / danger chrome **only** on T1 (112). Equal stacked boxes = fail.
2. **Pull SCOPE off the TIME ladder** — separate frame/geometry (e.g. orthogonal border, hairline break, non-T-chip row). **Never** a fifth grey rung under Treat.
3. **Remove form-meta from the figure** — delete in-figure text like **„keine Dringlichkeitsstufe“**, ontology IDs, EN stage labels. Allowed: content titles only (e.g. competence-boundary wording from C). Designer notes only in spike footer / Decision Note, not print body.
4. **German chrome only** — replace **„Action payload“** with DE content/action labels; keep ACTION *inside* each TIME tier (triggers + Handlung), not a third axis title.
5. **Break box monotony** — priority landscape (weighted tiers + internal trigger/action contiguity), not identical generic boxes for every tier.
6. **Re-check Must-see** from `kl-u-urgency-scope.form-spec.md`: T1≠T2; ACTION inside tier; multi-trigger inside one T1 when content requires; SCOPE optically not a TIME tier; no Treat-without-net; teal/script framework.
7. Document any remaining approx vs ideal in feasibility/spike notes — do not treat “compiles” as proximity to ideal.

## Pedagogy / scan checks (Media)

From `media-brief/references/design-reasoning.md` §5 — fail → **revise**:

- [ ] Main job / gatekeeper findable in first screenful — **fail-risk:** equal boxes bury T1 stop
- [ ] Action/decision path louder than links/sources — **partial/unknown**; EN “Action payload” chrome is wrong register
- [x] Order-critical steps read as ordered — **weak:** stack order alone without weight ≠ urgency landscape
- [ ] **Urgency weights from Brief not flattened** — **FAIL:** T1 ≡ T4
- [ ] **Flows look like flows** — **FAIL:** generic boxes, not dual-axis TIME+SCOPE instrument
- [ ] **Not box monotony** — **FAIL**
- [ ] **Form Spec Must-see met** — **FAIL** (weight, SCOPE geometry, form-meta, chrome)
- [x] Graphic / free-vision candidates reviewed when present — n/a (code spike)
- [ ] Production path after vision noted — n/a
- [ ] Asset winner gates — n/a
- [x] No claim rewrite / no new clinical thresholds in layout — **pass** on given description (layout/form-language failures only)

**KL ontology checklist (extra):**

- [ ] T1 ≠ T2 visually and by label — not demonstrated under equal-weight stack
- [ ] ACTION stays inside TIME tiers — undermined by EN “Action payload” as chrome/axis-ish label
- [ ] SCOPE optically outside TIME — **FAIL** (fifth grey ladder step)
- [ ] **No form-meta inside graphic** — **FAIL** („keine Dringlichkeitsstufe“)
- [ ] No EN stage chrome — **FAIL** („Action payload“)

## Content freeze pin (production)

- [ ] Freeze record verified — n/a
- [ ] `content_revision` matches freeze — n/a
- [ ] `brief_class` is **production** — **no**; this Accept is **`brief_class: exploration`**

## Production compose authorized?

- [ ] **yes**
- [x] **no** — exploration only; spike **not** accepted; no freeze pin; monotony + form-meta + weight fail block any production path

### Media notes for Compose (after future Accept only)

1. Implement US-A dual-axis (TIME stack + SCOPE frame); weight T1 loudest; SCOPE geometry-only separation.
2. Strip all form-meta and EN stage chrome from print surface.
3. Exploration Accept never authorizes production compose even if re-spike passes — still needs freeze + production brief path.

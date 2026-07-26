# Form Spec (Media — Stage M)

- **chapter_id / slug:** KL-Script-System / `kl-f2-urgency-ladder`
- **unit_id:** F2
- **brief_path:** `domains/medical/briefs/kl-script-system.brief.md`
- **content_source:** Welle-06 monographs §5 (demo: Erysipel + Myokardinfarkt/ACS)
- **genre:** illness-script decision core (lerntext chrome; danger only on 112 tier)
- **recipe_fn:** urgency lanes / hard-stop stack
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** optional (code-first Typst; free-vision not required for Accept of band default)

## Learner context

- **Actor:** HP Physio / PT Direktzugang
- **Time pressure / scan budget:** 5–15 s for tier; 30 s for action line
- **Setting:** Praxis / Hausbesuch

## Learner job (one primary)

**choose** (+ stop on 112)

**Primary job:** Under stress, pick the correct urgency tier and first action without reading the whole chapter.

## Load risks (if form is wrong)

- 112 and „Behandeln“ look equally loud
- Multi-112 rows (ACS) become unread wall
- Scope/boundary buried
- Color-only encoding

## Cognitive / layout levers

- signaling (tier weight) · segmenting (tier blocks) · contiguity (trigger next to action) · dual coding (shape + label + color)

## Information architecture (zones)

**Only Dimension A (time-to-act) is the ladder.** Scope is **not** a rung.

| zone | loudness | content role | must feel like |
|---|---|---|---|
| 1 Primary 112 | loudest | Same-urgency action + *internal* trigger list | one stop step, not two rungs |
| 2 Notaufnahme / gleichtags | loud | Same-day medical path | urgent but not 112-identical |
| 2b Zeitnah Arzt (when content has it) | medium | Days, not emergency | distinct from gleichtags |
| 3 Behandeln + Netz | medium-quiet | Only if no red flags | permission with net |
| Scope (separate) | quiet frame | What PT must not diagnose/treat | **orthogonal** to ladder — bar under/aside, never “grey step 4 of traffic light” |
| Quiet | quiet | footnote source refs | never before tiers |

**v1 mistake (superseded):** putting Zuständigkeit as last lane of the same stack as 112.

## Must-see elements

1. Visual inequality: **112 ≫ NA ≫ Treat**
2. Default-to-Danger when ACS/plausible cardiac or necrotizing pattern
3. **Zuständigkeitsgrenze** always present
4. Triggers readable next to action (not only in left column essay)
5. Multi-112: either **bundled red zone** with sub-bullets OR stacked hard-stop cards — not six equal table rows

## Urgency / weight encoding

- 112: solid danger (fill + left bar + label **112**)
- NA: amber/alert secondary (not same red solid)
- Treat: teal/neutral framework
- Scope: outline / muted fill
- Never color alone — always label 112 / Notaufnahme / Behandeln

## Branching / loop invariants

- No invented third tier between 112 and NA
- Treat never above 112 visually
- ACS demo: multiple 112 triggers share one loud zone

## Genre chrome

- **Must look like:** illness-script decision instrument / weighted triage
- **Must not look like:** full-page red notfall-karte for the whole chapter; exam poster; equal-row spreadsheet

## Claim pins (German, copy-through from C)

### Demo A — Erysipel (`chapter-v-10-erysipel.md` §5)

| step / zone | allowed text (German) |
|---|---|
| 112 trigger | Extrem unverhältnismäßiger Schmerz („Vernichtungsschmerz“), rasche Ausbreitung, unscharfe Begrenzung, Blasen/Nekrosen, Hautemphysem oder Krepitation, Schockzeichen |
| 112 action | Therapie abbrechen, Vitalzeichen erheben, **Notruf 112**. Keine Physiotherapie |
| NA trigger | flächiges scharf begrenztes Erythem plus Fieber oder systemische Zeichen; … |
| NA action | Therapie abbrechen; Notaufnahme bzw. gleichtags Arzt; keine manuelle Lymphdrainage / intensive Wärme auf floridem Areal |
| Treat | Nur ohne Red Flags; Rückkehrgründe (Rötung, Fieber, Schüttelfrost, …) |
| Scope | Keine Erysipel-Diagnosesicherung, keine Antibiotika; manuelle Techniken/Lymphdrainage auf floridem Erysipel ohne Freigabe absolut kontraindiziert |

### Demo B — ACS (`chapter-v-1-myokardinfarkt.md` §5)

| step / zone | allowed text (German) |
|---|---|
| 112 cluster | Retrosternaler Vernichtungs-/Druckschmerz + vegetativ; Dyspnoe/Synkope/Schock; bekannte KHK + Crescendo-Ruheschmerz; Oberbauch + Vegetativum + RF |
| 112 action | **112 wählen**; Sitzung beenden; absolute Ruhe; keine Belastung / manuelle Thorax-Intervention |
| NA | Nur wenn kein ACS-Vollbild und keine 112-Kriterien, aber unklar → keine PT; bei Verschlechterung sofort 112 |
| Treat | Nur gesicherte MSK-Erklärung ohne RF |
| Scope | ACS-Ausschluss, EKG, Troponin, STEMI/NSTEMI-Zuordnung, Reperfusion — nicht HP/PT |

## Explicit non-goals / must-not

- No invented thresholds (no new time windows, scores as rule-out)
- No English stage titles
- No resolving clinical ambiguity by layout

## Presentation hypothesis (pattern name)

urgency lanes · hard-stop stack · multi-trigger red bundle

## Success criterion

Under scan stress the learner **recognizes the tier (112 vs NA vs treat)** and **does the first stop action** without equal-weight confusion.

## Handoff to Graphics

- [x] Form Spec complete for this unit
- [x] Ambition flag set (optional free-vision)
- [x] Claim pins from C
- Phase 1: Typst spike variants A–D in `toolset/compose/spikes/graphics/kl-script-system/`

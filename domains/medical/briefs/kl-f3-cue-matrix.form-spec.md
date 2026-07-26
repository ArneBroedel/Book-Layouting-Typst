# Form Spec (Media — Stage M)

- **chapter_id / slug:** KL-Script-System / `kl-f3-cue-matrix`
- **unit_id:** F3
- **brief_path:** `domains/medical/briefs/kl-script-system.brief.md`
- **content_source:** Welle-06 monographs §3 (demo: Erysipel)
- **genre:** lerntext recognition
- **recipe_fn:** cue cluster
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** skip (pure Typst; free-vision not needed)

## Learner context

- **Actor:** PT Erstkontakt
- **Time pressure / scan budget:** 20–40 s
- **Setting:** Praxis

## Learner job (one primary)

**recognize**

**Primary job:** Scan four clinical domains (Anamnese / Beobachtung / Untersuchung / Verlauf) and extract actionable cues.

## Load risks

- Prose wall
- Domain labels lost
- „Untersuchung schließt X nicht aus“ buried

## Cognitive / layout levers

- segmenting into 4 domains · signaling labels · contiguity

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| 1 Anamnese | medium | Subjective cues | questions/history |
| 2 Beobachtung | medium | What you see | visual cues |
| 3 Untersuchung | medium-loud | What you do / must not do | limits of exam |
| 4 Verlauf | medium | Time course alarms | tempo |

## Must-see elements

1. All four domain labels visible at a glance
2. Erysipel: **keine** manuelle Entstauung / intensive Wärme on floridem Befund (Untersuchung)
3. Onset hours–days alarm (Verlauf)

## Urgency / weight encoding

- Framework teal labels; no full red (danger lives in F2)
- Optional subtle emphasis on „keine …“ KI lines

## Genre chrome

- **Must look like:** clinical cue board / illness-script §3
- **Must not look like:** emergency protocol or decorative icon grid without text

## Claim pins (Erysipel §3)

| step / zone | allowed text (German) |
|---|---|
| Anamnese | Plötzliches oder rasch progredientes Erythem (Bein oder Gesicht), Schmerz, Überwärmung; Fieber/Schüttelfrost; Eintrittspforte; Immunsuppression/Diabetes erfragen |
| Beobachtung | Scharf begrenztes, oft flammenförmiges Erythem, meist einseitig; glänzende, überwärmte Haut; ggf. Ödem und regionäre Lymphknotenschwellung |
| Untersuchung | Rand markieren, Umfang, Pulse, Lymphknoten, Vitalparameter; **keine** manuelle „Entstauung“ und keine intensive Wärme auf floridem Befund |
| Verlauf | Stunden bis wenige Tage; rasche Ausbreitung, zunehmender Schmerz oder Systemik alarmierend |

## Explicit non-goals

- No new clinical tests
- No photo of real patient skin in Phase 1

## Presentation hypothesis

cue cluster 2×2 · classic domain table

## Success criterion

Under scan stress the learner **finds the four domains** and **notices the exam KIs**.

## Handoff to Graphics

- [x] complete · ambition skip · Typst spike A/B

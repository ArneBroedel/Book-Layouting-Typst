# Form Spec (Media — Stage M)

- **chapter_id / slug:**
- **unit_id:** (e.g. S4)
- **brief_path:** `domains/medical/briefs/<slug>.brief.md`
- **content_source:** (C path, read-only)
- **genre:**
- **recipe_fn:** (e.g. F4 — optional)
- **author_role:** media
- **date:**
- **ambition:** free-vision **required** | optional | skip

> Medizinpädagogisch **beste** Darstellungsform — spezifiziert genug für Graphics Free Vision + Recreate.  
> **Keine** form ids / bookkit-APIs. **Keine** Claim-Erfindung (Pins = copy-through aus C).  
> Skill: `media-brief` · Guide: `Guides/Medical-Presentation-Forms.md`

## Learner context

- **Actor:** (e.g. PT Erstkontakt MSK)
- **Time pressure / scan budget:** (e.g. 5–10 s / 30 s)
- **Setting:** (Praxis / Notfall / Seminar)

## Learner job (one primary)

stop | recognize | choose | execute | distinguish | understand | look up  

**Primary job in one sentence:**

## Load risks (if form is wrong)

-

## Cognitive / layout levers (only what layout can fix)

- segmenting / signaling / contiguity / dual coding / … (short)

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| 1 (primary) | loud | | |
| 2 | | | |
| Escape (optional) | quiet-side | | |
| Quiet trailing | quiet | | |

## Must-see elements

What must be *visible* (not only somewhere in prose):

1.
2.
3.

## Urgency / weight encoding

- Which steps solid danger vs neutral / framework teal?
- Default-to-Danger / binary rule / hard stops?

## Branching / loop invariants (if any)

- e.g. exactly two exits from step 3; stabil stays on 4a; …

## Genre chrome

- notfall-karte | leitsymptom | lerntext-OS | …  
- **Must look like:**  
- **Must not look like:** (e.g. not a red emergency wall for framework OS)

## Claim pins (German, copy-through from C / approved pilot)

| step / zone | allowed text (German) |
|---|---|
| | |

## Explicit non-goals / must-not

- No invented thresholds / doses / English decorative stage titles
-

## Presentation hypothesis (pattern name)

e.g. hard-stop protocol | split triage vertical | framework OS sequence | branching emergency

## Success criterion

Under scan stress the learner **recognizes X** and **does Y**.

## Handoff to Graphics

- [ ] Form Spec complete for this unit
- [ ] Ambition flag set
- [ ] Claim pins reviewed against C
- Visual-Unit → `medical-graphics` playbook from Stage G0

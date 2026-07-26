# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-3-kompartmentsyndrom / `kl-compartment-mimic`
- **unit_id:** U-mimic (FRAME-ERROR)
- **brief_path:** `domains/medical/briefs/kl-compartment.brief.md`
- **content_source:** `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-3-kompartmentsyndrom.md` §4 Trügerische Erklärungen
- **content_map:** `domains/medical/briefs/_wave5/kl-compartment.content-map.md`
- **genre:** illness-script / lerntext
- **recipe_fn:** `kl-mimic-map` (optional later peel)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** (peel); default **code map**
- **ontology:** v1.1 · FRAME-ERROR direction always: harmloses Label → echte Gefahr
- **brief_class:** exploration

> Four trügerische frames from C — **map** Frame→Gefahr, not essay, not 2×2 with FA/NM.  
> Pins copy-through C only. **No form-meta** („Label/Darunter“) in print.

## Learner context

- **Actor:** PT Direktzugang under MSK-mislabel risk  
- **Scan budget:** 8–20 s false-frame rejection  
- **Setting:** Praxis / post-exertion / cast-bandage talk  

## Learner job (one primary)

**distinguish** (error frames)

**Primary job in one sentence:** Hear the false frame (Muskelkater, enger Gips, Prellung, “Pulse ok”), map to ACS danger, and stop — never treat the mask as clearance.

## Load risks (if form is wrong)

- Frames without danger side  
- Reverse direction  
- Meta-UI words („Label“, „Darunter“)  
- Equal cell in 2×2 with for/against  
- “Gips spalten = erledigt” soft ending  
- Pulse frame that still looks like clearance  
- CECS free-pass confusion (belongs partly T4/FA — do not drop Re-Triage if CECS appears)  

## Cognitive / layout levers

- Contiguity: frame next to danger  
- Signaling: danger louder than frame  
- Dual coding: arrow + short mapping semantics  
- Sequential after FA + NM (not collapsed)  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Title | medium | content: Trügerische Erklärungen | not form-meta |
| Mapping rows (4) | medium-loud | frame → danger | directed map |
| Optional peel | high | same claims | ambition only |
| Quiet | quiet | link to T2/T1 if needed | not full TIME stack |

## Must-see elements

1. All **four** frames from C present  
2. Direction **frame → danger**  
3. Mapping semantics from C (not invented)  
4. Pulse row: erhaltene Pulse = Fallstrick, **not** clearance  
5. Gips row: iatrogener Trigger möglich; Spaltung allein **kein sicherer Ausschluss**  
6. No form-meta UI words  
7. Not merged into FA/NM 2×2  

## Urgency / weight encoding

- Frame: neutral/muted, often Anführungszeichen  
- Danger: danger color + bold  
- Not a TIME ladder  

## Genre chrome

- **Must look like:** clinical error-mode map inside Master script  
- **Must not look like:** comic without claims; solid-red Notfallwand; wireframe meta mock  

## Claim pins (German, copy-through from C)

| step / zone | allowed text (German) |
|---|---|
| Frame 1 | *Muskelkater / DOMS / Zerrung* |
| Danger 1 | belastungsabhängig und bessert in Ruhe — ACS **eskaliert über Stunden** mit extremem Dehnungsschmerz |
| Frame 2 | *„Enger Gips/Verband“* |
| Danger 2 | **iatrogener Trigger möglich**; Spaltung allein ist **kein sicherer Ausschluss** |
| Frame 3 | *Prellung ohne Fraktur* |
| Danger 3 | suggeriert Harmlosigkeit — ACS entsteht **auch ohne knöcherne Beteiligung** |
| Frame 4 | *Erhaltene Pulse* |
| Danger 4 | klassischer Fallstrick — Pulse schließen ACS **nicht** aus |

### Related must-not-miss (adjacency only — own unit if printed separately)

| NM pin (C) |
|------------|
| ACS auch **ohne Fraktur** (Weichteiltrauma) |
| **erhaltene Pulse** |
| maskierte Symptome unter Analgesie/Sedierung und bei Kindern |

## Explicit non-goals / must-not

- No invented fifth bagatelle  
- No form-meta in figure  
- No “Gips ab = geheilt” resolution  
- No reverse satire as primary lesson  
- No full urgency stack inside mimic  
- No 6P alphabet  
- No content rewrite  

## Presentation hypothesis (pattern name)

**`kl-mimic-map`** four rows · optional peel if Accept wants more chrome

## Success criterion

Under “Muskelkater / enger Verband / Pulse tastbar” talk the learner **maps each frame to ACS danger** and **stops / refers** — especially never clearing on preserved pulses or cast split alone.

## Handoff to Graphics

- [x] Form Spec complete  
- Default: code/Typst mapping rows  
- Optional: free vision peel → claim audit → recreate/hybrid  

# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-4-schlaganfall / `kl-stroke-mimic`
- **unit_id:** U-mimic (FRAME-ERROR)
- **brief_path:** `domains/medical/briefs/kl-stroke.brief.md`
- **content_source:** `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-4-schlaganfall.md` §4 Trügerische Erklärungen (+ Vertiefung same 4 frames)
- **content_map:** `domains/medical/briefs/_wave5/kl-stroke.content-map.md`
- **genre:** illness-script / lerntext
- **recipe_fn:** `kl-mimic-map` (optional later `kl-mimic-peel`)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** (peel); default **code map**
- **ontology:** v1.1 · FRAME-ERROR direction always: harmloses Label → echte Gefahr
- **brief_class:** exploration

> Four trügerische frames from C — **map**, not essay, not 2×2 with FA/NM.  
> Pins copy-through C only. **No form-meta** („Label/Darunter“) in print.

## Learner context

- **Actor:** PT Direktzugang under mislabel risk (patient or self frames “harmless”)  
- **Scan budget:** 8–20 s false-frame rejection  
- **Setting:** Praxis; HWS-Wunsch, „Bell“, Migräne-Aura, Schulter-Arm talk  

## Learner job (one primary)

**distinguish** (error frames)

**Primary job in one sentence:** Hear the false frame, map to central/stroke danger, and stop mobilisation / start 112 path when uncertain — never “erstmal mobilisieren und abwarten”.

## Load risks (if form is wrong)

- Frames listed without danger side  
- Reverse direction (danger → joke frame)  
- Meta-UI words („Label“, „Darunter“, „False belief“)  
- Equal cell in a 2×2 with for/against  
- Softening HWS / Bell rows so mobilisation still looks ok  
- Sensational stroke chrome without claim pins  

## Cognitive / layout levers

- Contiguity: frame next to danger  
- Signaling: danger louder than frame  
- Dual coding: arrow/relation + short consequence  
- Sequential after FA + NM (not collapsed into one matrix)  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Title | medium | content: Trügerische Erklärungen | not form-meta |
| Mapping rows (4) | medium-loud | frame → danger (+ must-not action) | directed map |
| Optional peel | high | same claims, HWS-mask narrative | ambition only |
| Quiet | quiet | link to T1 if needed | not competing TIME stack |

## Must-see elements

1. All **four** content frames present (order as C)  
2. Direction **frame → danger** (not reverse)  
3. Consequence / must-not visible (112 / no mobilisation) on rows  
4. No PT diagnosis claim; Unsicherheit prioritizes dangerous diagnosis  
5. No form-meta UI words  
6. Not merged into FA/NM 2×2  

## Urgency / weight encoding

- Frame: neutral/muted, often in Anführungszeichen  
- Danger: danger color + bold  
- Arrow/relation: danger-accent  
- Not a TIME ladder  

## Genre chrome

- **Must look like:** clinical error-mode map inside Master learning script  
- **Must not look like:** comic without claims; full Notfallkarte; wireframe mock with meta labels  

## Claim pins (German, copy-through from C)

| step / zone | allowed text (German) |
|---|---|
| Frame 1 | „Periphere Fazialisparese / Bell“ |
| Danger 1 | Zentrale Parese / Schlaganfall, wenn Stirn-Check fehlt; Begleitdefizite Arm, Sprache |
| Must-not 1 | Bei Unsicherheit oder Begleitdefizit → **112**; Stirnrunzeln prüfen |
| Frame 2 | „HWS-Blockade / Schwindel vom Nacken“ |
| Danger 2 | Hirnstamm- oder Posterior-Infarkt; plötzlicher Schwindel plus fokales Defizit oder akute Ataxie |
| Must-not 2 | **Keine** Mobilisation vor Ausschluss; zentrale Ursache zuerst |
| Frame 3 | „Migräne-Aura“ |
| Danger 3 | TIA oder Infarkt bei Aura-ähnlichen flüchtigen Symptomen ohne sichere Migräne-Anamnese / ohne Zeitfenster-Bewusstsein |
| Must-not 3 | Unsicherheit = Notfallpfad; keine Selbst-Entwarnung |
| Frame 4 | „Schulter-Arm / Radikulopathie“ |
| Danger 4 | Hemiparese bei einseitiger Armschwäche mit apoplektiformem Beginn und zentralen Begleitzeichen |
| Must-not 4 | Nicht „erstmal mobilisieren“; Hemiparese bis zum Beweis des Gegenteils |

### Optional clinical anchors (quiet / transfer adjacency — same claims)

| anchor | pin gist (C) |
|--------|----------------|
| Case Study mask | Nacken- / „HWS-Schmerz“ + Selbstvermutung Blockade überdeckt apoplektiforme Hemiparese mit Fazialisbeteiligung und Sprachstörung |
| Mini-Fall mask | 67 J., „steife HWS und Schwindel“, flüchtige Hand-/Sprachstörung → TIA/Notfall-Logik; Mobilisation kontraindiziert |

## Explicit non-goals / must-not

- No invented fifth bagatelle frame  
- No form-meta in figure  
- No reverse satire (overtriage joke as primary lesson)  
- No “PT darf Bell ausschließen”  
- No full nested-T1 stack inside mimic unit  
- No content rewrite  

## Presentation hypothesis (pattern name)

**`kl-mimic-map`** four rows · optional **`kl-mimic-peel`** (HWS-Maske → zentrale Gefahr) if Accept wants more chrome

## Success criterion

Under bagatellizing or MSK-self-label talk the learner **maps each false frame to central danger** and **chooses 112 / no mobilisation** when uncertain — not “weiter mobilisieren und abwarten”.

## Handoff to Graphics

- [x] Form Spec complete  
- Default: Typst/code recreate mapping rows  
- Optional: free vision peel → claim audit → recreate/hybrid  
- Visual-Unit → `medical-graphics` only if peel ambition selected  

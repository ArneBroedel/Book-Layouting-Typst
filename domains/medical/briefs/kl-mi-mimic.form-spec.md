# Form Spec (Media — Stage M)

- **chapter_id / slug:** V-1 Myokardinfarkt / `kl-mi-mimic`
- **unit_id:** U-mimic (FRAME-ERROR)
- **brief_path:** `domains/medical/briefs/kl-mi.brief.md`
- **content_source:** Welle-06 `chapter-v-1-myokardinfarkt.md` EH §4 Trügerische Erklärungen + Vertiefung „Trügerische ‚harmlose‘ Erklärungen“ + Case-level Mimikry
- **genre:** illness-script / lerntext (Master, kl-voll)
- **recipe_fn:** `kl-mimic-map` (default) · optional `kl-mimic-peel` (MSK-/Magen-/Panik-Maske)
- **author_role:** media
- **date:** 2026-07-26
- **ambition:** free-vision **optional** (M-B peel); default **code** mapping rows
- **ontology:** v1.1 · content-map `domains/medical/briefs/_wave5/kl-mi.content-map.md`
- **brief_class:** exploration

> Error-mode unit: everyday/MSK/GI/psych frames **mask** ACS. Direction always **frame → real danger**. Pins copy-through C. No form-meta in figure.

## Learner context

- **Actor:** PT / HP Physio Direktzugang under mislabel risk (Brust, Schulter, BWS, Oberbauch)
- **Time pressure / scan budget:** 10–25 s for false-frame rejection
- **Setting:** Praxis; Patient:in bagatellisiert („Magen“, „Blockade“, „Panik“); palpatorisch „reproduzierbar“

## Learner job (one primary)

**distinguish** (error mode)

**Primary job in one sentence:** Den trügerischen Alltags-/MSK-Frame hören, die **reale ACS-Gefahr** dahinter mappen und **nicht** entwarnen (inkl. Palpationsfalle) — Richtung Frame→Gefahr behalten.

## Load risks (if form is wrong)

- Frames ohne Danger-Seite (nur Zitate)
- Richtung umkehren (Overtriage-Satire / „alles ist MSK“)
- Mit Erhärtet/Passt-nicht in **ein 2×2** gequetscht
- 4. Frame „druckschmerzhaft = muskulär“ versteckt oder weggelassen
- Meta-UI („Label“, „Darunter“, „False belief“)
- Prosa-Wand ohne Mapping
- Case-Spoiler als Auflösung im Druck

## Cognitive / layout levers

- **Contiguity:** Frame unmittelbar neben Gefahr
- **Signaling:** Gefahr lauter als Frame (Farbe/Fett/Pfeil)
- **Dual coding:** gerichtete Relation (Pfeil) + kurze Konsequenz
- **Segmenting:** eine Zeile/Karte pro Frame (3 Kern + 4. Vertiefung; Case als optionaler Anker)
- **No wireframe chrome** in print

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Header | medium | Content-Titel z. B. „Trügerische Erklärungen“ / „Trügerisch — Gefahr hinter harmlosem Bild“ | error-mode, **kein** Form-Meta |
| Mapping rows (Kern 1–3) | medium-loud | Frame → Gefahr | gerichtete Map |
| Mapping row 4 (kl-voll Vertiefung) | medium-loud | „druckschmerzhaft, also muskulär“ → nie allein entwarnen | **Pflicht** für kl-voll |
| Optional peel / mask | high (ambition) | dieselben Claims, stärkere Masken-Metapher | nur wenn Accept will; Claims unverändert |
| Case-level echo (optional quiet) | quiet-medium | paravertebral + Umzug maskiert kardialen Ruheschmerz | Anker, **kein** Spoiler-Key |
| Quiet link | quiet | Verweis auf 112-Pfad / §5 | nicht konkurrierend mit Map |

## Must-see elements

1. Richtung **Frame → Gefahr** (nicht umgekehrt)  
2. Mindestens die **drei Kern-Frames** aus EH §4  
3. **Vierter Frame** (Vertiefung): Palpation/„druckschmerzhaft = muskulär“ — im Direktzugang **niemals** alleinige Entwarnung  
4. Konsequenz der Fehllabelung sichtbar (Maskierung / verzögerter Notruf / ACS nicht ausschließen) auf ≥1 Zeilen  
5. Keine Print-Wörter „Label“ / „Darunter“ / Ontology-IDs als UI  
6. Kein PT-Diagnose-Claim („also kein Infarkt“) in der Konsequenz  

## Icon meaning (optional — free-vision peel)

| pin / zone | drawing must show | must not show |
|---|---|---|
| Maske „Magen“ | harmloser GI-Frame, der kardiale Gefahr **verdeckt** | humorvolle Magen-Comic ohne Claim; erfundene Ulkus-Diagnostik |
| Maske „Schulter/BWS“ | orthopädisches Bild über Ausstrahlung/Ischämie | detaillierte Wirbel-Anatomie-Overclaim; „Blockade lösen“ als Therapie |
| Maske „Panik“ | psychische Erstlabelung vor ACS-Ausschluss | Stigmatisierung; „nur psychisch“-Entwarnung |
| Maske „Druckdolenz“ | palpatorische Reproduzierbarkeit als **trügerische** Sicherheit | MHS-Score-UI; „Palpation beweist MSK“ |
| Peel-Geste | Frame abheben → Gefahr lesbar | Gore; realistische Infarkt-Patho-Schock-Art ohne Pins |

## Urgency / weight encoding

- Frame: neutral/muted, oft in Anführungszeichen  
- Gefahr: danger accent + bold  
- Relation: danger-colored arrow / map mark  
- **Keine** TIME-Leiter; bei Bedarf leiser Verweis „→ 112“ nur als Konsequenz-Pin aus C, nicht als neue Stufe  

## Branching / loop invariants

- Immer Frame → Gefahr (Error-Mode)  
- Keine erfundenen Frames jenseits C (3 Kern + 4 Vertiefung + optional Case-Anker)  
- Palpations-Cave darf **nicht** weichgespült werden  
- Mimic ersetzt **nicht** U-for-against / must-not-miss (sequentiell im Kapitel, nicht ein 2×2)

## Genre chrome

- **Must look like:** klinische Error-Mode-Map im Illness-Script  
- **Must not look like:** Comic ohne Claims; Anatomie-Schock-Art; Wireframe-Mock; Notfallplakat; Diskriminations-2×2  

## Claim pins (German, copy-through)

### EH §4 Kern (3 Frames)

| step / zone | allowed text (German) |
|---|---|
| Frame 1 | Epigastrischer Schmerz als Magenbeschwerde **ohne** Prüfung vegetativer Begleitsymptome |
| Gefahr 1 | Kann einen Infarkt maskieren |
| Frame 2 | Linksschulter- oder BWS-Schmerz als „reiner MSK-Befund“ |
| Gefahr 2 | Kann Ausstrahlung oder Ischämie-Äquivalent sein |
| Frame 3 | „Panikattacke“ bei Vernichtungsschmerz und Risikofaktoren |
| Gefahr 3 | Ersetzt keine 112-Entscheidung |

### Vertiefung „Trügerische ‚harmlose‘ Erklärungen“ (4 Frames — kl-voll)

| step / zone | allowed text (German) |
|---|---|
| V1 Frame | „Magen / Gastritis“ |
| V1 Mapping | Epigastrischer Schmerz mit vegetativen Zeichen und Risikofaktoren kann ACS-Mimikry sein — nicht als rein gastrointestinal abtun |
| V2 Frame | „Linke Schulter / BWS-Blockade“ |
| V2 Mapping | Ausstrahlung und begleitender retrosternaler Druck oder Dyspnoe → Notfallverdacht aus scheinbar orthopädischem Bild |
| V3 Frame | „Panik / Hyperventilation“ |
| V3 Mapping | Vernichtungsschmerz, Kaltschweiß und Risikoprofil rechtfertigen keine psychische Erstlabelung vor ACS-Ausschluss |
| V4 Frame | „Druckschmerzhaft, also muskulär“ |
| V4 Mapping | Palpationsitem senkt in **ärztlichen** MHS-Validierungskohorten die KHK-Wahrscheinlichkeit — im Direktzugang **niemals** alleinige Entwarnung („druckschmerzhaft = nicht kardial“) |

> **Realisierungs-Hinweis für Graphics:** Kern 1–3 und Vertiefung 1–3 überlappen thematisch (Magen / Schulter-BWS / Panik). **Nicht** acht redundante Zeilen erzwingen — scannbare Map mit **vier** distinkten Frames (Magen, Schulter/BWS, Panik, Palpation), angereichert um die schärferen Vertiefungs-Mappings; Kern-Pins bleiben claim-treu. Palpations-Frame (V4) ist **nicht** optional.

### Case-level Mimikry (optional quiet anchor)

| step / zone | allowed text (German) |
|---|---|
| Trügerischer Befund | reproduzierbare paravertebrale Druckdolenz + anamnestische Belastung („Umzug, schwer getragen“) legen rein MSK-Bild nahe |
| Gefahr | können **kardialen Ruheschmerz mit vegetativen Zeichen** überdecken |

### Verwandte Cave (nur wenn in Mimic-Konsequenz nötig — sonst in FA-Unit)

| step / zone | allowed text (German) |
|---|---|
| Cave Palpation | **nie allein durch Palpation entwarnen**, wenn Anamnese kardial klingt |

## Explicit non-goals / must-not

- No form-meta / EN UI chrome  
- No invented fifth bagatelle beyond C  
- No reverse mapping  
- No “PT darf MSK ausschließen”  
- No spoiler solution keys for §6/Case  
- No content rewrite  
- No photoreal required for M-A map  

## Presentation hypothesis

**M-A mapping rows** (default, code) · **M-B mask/peel** (optional free-vision) for MSK/Magen/Panik/Palpation masks.

## Success criterion

Unter Scan-Stress mappt die lernende Person mindestens **Magen-**, **Schulter/BWS-**, **Panik-** und **Palpations-**Frames auf die **reale ACS-Gefahr**, behält die Richtung Frame→Gefahr, und **entwarnt nicht** allein durch Druckdolenz oder psychische/MSK-Erstlabelung — sondern bleibt auf dem **112-/Triage-Pfad**.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition optional peel; default map  
- [x] Claim pins from C / content-map  
- Next: `medical-graphics` G0+; claim audit on free labels if peel  

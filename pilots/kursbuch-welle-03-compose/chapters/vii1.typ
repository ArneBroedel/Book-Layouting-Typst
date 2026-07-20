// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/vii1-exam-cluster.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-vii1-exam-cluster-integration.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// wave: 2026-07-welle-03-final-10 · v2 creative redesign
// NO new facts — actions/thresholds copy-through from wave chapters only.

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *

#chapter-opener(
  title: [Gemischte Exam-Cluster: Recht × Klinik × Hygiene × Notfall],
  lead: [Transfer-Drill · Treat vs. Refer vs. 112 · *Keine neuen Fakten* · Quellen: `→ II-1` · `→ I-4` · `→ III-2` · `→ III-5-Cauda` · `→ V-Cauda` · `→ IV-2` · `→ IV-4` · `→ V-SeptArthritis` · `→ VI-1`],
  number: "VII-1",
)

// ── Spielregeln ────────────────────────────────────────────────
#callout(title: [Spielregeln], tone: "warning")[
  1. *Worst first* — Lebensgefahr und harte Red Flags vor MSK-Deutung.
  2. *Default-to-Danger* — bei Unsicherheit höhere Dringlichkeit wählen (`→ II-1`).
  3. *R + I + S → C* — jede Station endet mit einer *Handlung*, nicht mit einem Label.
  4. *Verweise statt Neu-Lehre* — Schwellen und RF nur aus den Master-/Pfadkapiteln.
  5. *Recht = Hard Limit* — § 24 IfSG / Meldeweg stoppen Infekt-„Therapie“ auch bei „nur MSK-Termin“ (`→ I-4`).
]

// ── Stationen 1–10 as station-card ─────────────────────────────
== Stationen (Drill)

#station-card(
  number: 1,
  title: [Reithosen-Flag + „Rücken besser“],
  tone: "danger",
  vignette: [
    48 J., Direktzugang „Hexenschuss“. Seit gestern Taubheit im
    Genital-/Sattelbereich; Blasendrang unklar. Lumbalschmerz *nachgelassen*,
    Beinkraft bilateral schwächer. Wünscht „Blockade lösen“.
  ],
  fangfrage: [Wurzeltod-Trugschluss; CES-Flags; HVT-KI · *Aufgabe:* Was tun Sie in den nächsten 2 Minuten?],
  action: [
    • *Stop* PT / keine HVT, Traktion, forcierte Mobilisation ·
    • *112 / ED sofort*, Stichwort *Cauda-Verdacht* ·
    • Schmerz↓ + Taubheit/Parese↑ *nicht* als Besserung werten ·
    • C: *R4 · I1 · S4 → Stop & Call* ·
    • *Kein* Treat
  ],
  verweise: [`→ III-5-Cauda` · `→ V-Cauda` · `→ IV-2` · `→ II-1`],
)

#station-card(
  number: 2,
  title: [Unilaterale Ischialgie ohne CES (Split)],
  tone: "warning",
  vignette: [
    41 J., seit 3 Tagen strahlender Beinschmerz L5 links, leichte
    Fußheberschwäche, *kein* Sattel, Blase normal, unilateral, progredient.
  ],
  fangfrage: [112 erzwingen vs. gleichtags Arzt vs. Treat-alone · *Aufgabe:* Treat, Refer oder 112?],
  action: [
    • *Kein* 112-Default (kein Sattel/Sphinkter/bilaterale Progredienz) ·
    • *Arzt gleichtags* / MRT-Indikation ärztlich; *keine* isolierte PT-Serie ·
    • Absolute KI HVT bei RF-naher Progredienz ·
    • C: *Refer* (R3), Safety-Net: bei Sattel/Blase/bilateral *sofort 112/ED* ·
    • *Kein* Treat-alone
  ],
  verweise: [`→ IV-2` · `→ V-Cauda` · `→ III-5-Cauda`],
)

#station-card(
  number: 3,
  title: [Heißes Knie + Fieber + AZ-Abfall],
  tone: "danger",
  vignette: [
    67 J., „Arthroseschub“ rechtes Knie seit 36 h: heiß, geschwollen,
    Non-weight-bearing. Fieber *39,1 °C*, Schüttelfrost, wirkt schwer krank. Will
    „mobilisieren“.
  ],
  fangfrage: [112 vs. ED-Split; Label „OA“ mildert nicht · *Aufgabe:* Nächste 2 Minuten?],
  action: [
    • *Stop* am Gelenk; *keine* Manipulation/Probebehandlung ·
    • Vitalzeichen; *112* (heißes Gelenk + Fieber ≥ 38,5 °C + deutliche AZ-Verschlechterung) ·
    • Label „Arthrose/Gicht“ *ersetzt keine* Triage ·
    • C: *R4 · I1 · S4 → Stop & Call* ·
    • *Kein* Treat
  ],
  verweise: [`→ IV-4` · `→ V-SeptArthritis` · `→ II-1` · ggf. Vital-First-Look `→ III-2`],
)

#station-card(
  number: 4,
  title: [Heißes Gelenk ohne Sepsis-Bild + „bekannte Gicht“],
  tone: "warning",
  vignette: [
    55 J., bekannt Gicht; seit gestern heißes, extrem schmerzhaftes
    Sprunggelenk, Belastung unmöglich. *Kein* Fieber, AZ relativ stabil. „Immer
    Gicht — 2–3 Tage abwarten und kühlen.“
  ],
  fangfrage: [ED noch heute vs. 112; Kristalle ≠ Ausschluss Infekt · *Aufgabe:* Treat vs. Refer vs. 112?],
  action: [
    • *Kein* 112-Default *ohne* Sepsis-/AZ-Notfallbild ·
    • *ED noch heute* (hot swollen joint + Non-weight-bearing) ·
    • *Keine* Probebehandlung „2–3 Tage“; keine Manipulation/HP-Punktion ·
    • „Gicht“-Label / Kristalllogik *schließt Infekt nicht aus* (ärztlich) ·
    • C: *Refer only* (ED) ·
    • *Kein* Treat
  ],
  verweise: [`→ IV-4` · `→ V-SeptArthritis`],
)

#station-card(
  number: 5,
  title: [Meningismus + Petechien (IfSG × Notfall)],
  tone: "danger",
  vignette: [
    22 J., Nackensteifigkeit, Fieber, petechiales Exanthem; Termin
    „Verspannung Nacken“. Wartezimmer voll.
  ],
  fangfrage: [112; § 24; Wartezimmer-Exposition · *Aufgabe:* Was tun Sie sofort?],
  action: [
    • *Keine* Physiotherapie; *112* — keine Verzögerung durch Mobilisieren ·
    • *Keine* Feststellung/„Infektbehandlung“ (§ 24 Arztvorbehalt) ·
    • Exposition stoppen; meldepflichtige Lage → *GA + Arzt* priorisieren (Wer meldet: § 8 aktuelle Fassung) ·
    • C: *Stop & Call* ·
    • *Kein* Treat
  ],
  verweise: [`→ I-4` · `→ II-1` · Hygiene/Isolation-Detail `→ III-6 (geplant)`],
)

#station-card(
  number: 6,
  title: [Masernverdacht im Wartezimmer (Recht × Hygiene)],
  tone: "warning",
  vignette: [
    Kind mit Fieber + makulopapulösem Exanthem, Eltern: „Masern im
    Kindergarten“. Termin MSK-Elternteil; Wartezimmer besetzt.
  ],
  fangfrage: [Isolation; gleichtags GA/Arzt; kein IfSG-„Behandeln“ · *Aufgabe:* Was ist der korrekte Scope-Pfad?],
  action: [
    • *Keine* Wartezimmer-Exposition; Termin stoppen ·
    • *Gleichtags GA/Arzt* (hochkontagiös) ·
    • *Kein* klinisches „Ausschließen“ und PT starten (§ 24) ·
    • Meldeweg/Verdacht: Logik `→ I-4` (Primärtext/§ 8 — nicht raten) ·
    • C: *Refer* (GA/Arzt), Hygiene priorisieren ·
    • *Kein* Treat
  ],
  verweise: [`→ I-4` · `→ III-6 (geplant)` · `→ I-6 (geplant)`],
)

#station-card(
  number: 7,
  title: [Kollaps in der Praxis (BLS/AED)],
  tone: "danger",
  vignette: [
    70 J. kollabiert nach Aufstehen von der Bank; reaktionslos.
    Atmung *unklar* / schnappend.
  ],
  fangfrage: [Agonalatmung; 112 vs. 116117; AED · *Aufgabe:* Algorithmus in 2 Minuten?],
  action: [
    • Therapie *abbrechen*; Szene sichern ·
    • Atmung max. *10 s* — unklar/nicht normal = wie *keine normale Atmung* ·
    • *112 + CPR + AED holen lassen*; AED-Anweisungen folgen ·
    • *116117 ist kein Ersatz* bei Lebensgefahr ·
    • C: *R4 · S4 → Stop & Call / BLS* ·
    • *Kein* „fertig behandeln“
  ],
  verweise: [`→ III-2` · `→ II-1`],
)

#station-card(
  number: 8,
  title: [Geriatrie — Delir vs. „Demenz-Progress“],
  tone: "warning",
  vignette: [
    84 J., Gangtraining-Verordnung. Angehörige: seit *gestern*
    fluktuierend verwirrt, unaufmerksam; neue Antibiotika? Fieber unklar. „Ist
    Demenz, immer so.“
  ],
  fangfrage: [Delir-Triage; fordernde Programme · *Aufgabe:* Treat vs. Refer?],
  action: [
    • Delir-Muster (*akut* Stunden–Tage) *nicht* als Demenz-Progress bagatellisieren ·
    • *Gleichtags–ED*; Stop fordernder PT ·
    • Ursachensuche Infekt/Metabolik/Medikamente = *ärztlich* ·
    • C: *Refer* (gleichtags–ED); *kein* Treat mit High-Load ·
    • Safety-Net bei Verschlechterung → 112-Pfad `→ III-2`
  ],
  verweise: [`→ VI-1` · `→ II-1`],
)

#station-card(
  number: 9,
  title: [Geriatrie — Sturz + Antikoagulation],
  tone: "danger",
  vignette: [
    79 J. nach Sturz zu Hause, leichte Kopfschmerzen, nimmt
    Antikoagulans; „nur Hals mobilisieren“.
  ],
  fangfrage: [MSK-only-Falle; Blutung/Trauma · *Aufgabe:* 112, ED oder Treat?],
  action: [
    • *Sturz + SHT-Risiko / Antikoagulation → 112 / ED* ·
    • *Keine* „MSK-only“-Behandlung ·
    • Bei Unfähigkeit zu belasten (Hüfte) zusätzlich Fraktur-ED-Pfad (separates Flag) ·
    • C: *Stop & Call / ED* ·
    • *Kein* Treat
  ],
  verweise: [`→ VI-1` · `→ III-2` (bei Vigilanz/Instabilität)],
)

#station-card(
  number: 10,
  title: [D-RISC-Synthese — gemischt],
  tone: "info",
  vignette: [
    60 J., subakuter LWS-Schmerz, stabile Neuro, *keine*
    CES-/Infekt-Flags, leichte Bewegungsangst; Hausarzt-Termin in 2 Tagen.
    Parallel fragt Kolleg:in, ob man bei „Infektpatient mit Erkältung“ Naturmittel
    „mitbehandeln“ darf.
  ],
  fangfrage: [Treat & Refer vs. IfSG-Hard-Limit; Farben-Falle vermeiden · *Aufgabe:* Zwei Entscheidungen (Klinik + Recht).],
  action: [
    *Klinik:* keine Rot-Cluster → *Treat & Refer* möglich + Safety-Netting
    (Sattel/Blase/Fieber/Progredienz → sofort eskalieren) — `→ II-1` · `→ IV-2`.
    *Recht:* eigenständige Infekt-Feststellung/Heilbehandlung enumerierter Infekte
    = *§ 24 Arztvorbehalt* → *nein*; unklarer Infekt + MSK → *gleichtags Arzt*,
    kein IfSG-„Behandeln“ — `→ I-4`. Orange-Flag (Angst) *≠* D-RISC-R3.
  ],
  verweise: [`→ II-1` · `→ I-4` · `→ IV-2`],
)

// ── Treat-vs-Refer summary ─────────────────────────────────────
#section-break()

== Schnell-Checklisten

#process-pathway(
  (
    [Worst\ first],
    [Default-to-\ Danger],
    [R+I+S → C],
    [Recht =\ Hard Limit],
  ),
  title: [Priorisierungs-Pfad unter Prüfungsdruck],
  color: palette.primary,
)

#memo(title: [P0-Recht (`→ I-4`)])[
  - Drei Schichten: *Melden* · *§ 24 nicht feststellen/behandeln* · Hygiene/Tätigkeitsverbote
  - Meningismus + Fieber/Petechien → *112*
  - Masern/hochkontagiös → gleichtags *GA/Arzt*, keine Wartezimmer-Exposition
  - Unklarer Infekt + MSK → gleichtags Arzt; Kataloge ändern; § 8 Primärtext
]

#memo(title: [P0-Notfall (`→ III-2`, `→ III-5-Cauda`)])[
  - Keine normale Atmung / unklar → *112 + CPR + AED*
  - Bewusstlos + Atmung normal → *Seitenlage + 112*
  - CES: Sattel / Blase-Darm / bilaterale Progredienz → *112 / ED*
  - 116117 ≠ 112 bei Lebensgefahr
]

=== Treat-vs-Refer Einzeiler

#styled-table(
  columns: (1.3fr, 0.8fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Lage],
    text(fill: white, weight: "bold", size: 8.5pt)[C (kurz)],
    text(fill: white, weight: "bold", size: 8.5pt)[Master],
  ),
  [CES-Muster],
  [*112 / ED*, Stop PT],
  [`→ III-5-Cauda` / `→ V-Cauda` / `→ IV-2`],
  [Unilateral progredient ohne CES],
  [*Arzt gleichtags*],
  [`→ IV-2`],
  [Heißes Gelenk + Fieber ≥ 38,5 °C + AZ↓],
  [*112*],
  [`→ IV-4` / `→ V-SeptArthritis`],
  [Heißes Gelenk + Non-weight-bearing, kein Sepsis-Bild],
  [*ED noch heute*],
  [`→ IV-4` / `→ V-SeptArthritis`],
  [Delir-Muster],
  [*gleichtags–ED*],
  [`→ VI-1`],
  [Sturz + Antikoag/SHT-Risiko],
  [*112 / ED*],
  [`→ VI-1`],
  [Plausibles MSK, RF negativ],
  [*Treat* + Safety-Netting],
  [`→ II-1` / `→ IV-2`],
)

// ── Quellen ────────────────────────────────────────────────────
#section-break()

== Quellen

*Keine neuen High-Stakes-Fakten.* Schwellen, RF und Normlogik ausschließlich aus:

#styled-table(
  columns: (0.9fr, 1.4fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kapitel],
    text(fill: white, weight: "bold", size: 8.5pt)[Datei (Welle)],
  ),
  [II-1 D-RISC], [`chapter-ii1-drei-achsen-drisc.md`],
  [I-4 IfSG], [`chapter-i4-ifsg-meldepflicht-behandlungsverbote.md`],
  [III-2 BLS/AED], [`chapter-iii2-bls-aed-notfallprozeduren.md`],
  [III-5-Cauda], [`chapter-iii5-cauda-notfallkarte.md`],
  [V-Cauda], [`chapter-v-cauda-equina.md`],
  [IV-2 Rücken Neuro], [`chapter-iv2-rueckenschmerz-neuro.md`],
  [IV-4 Heißes Gelenk], [`chapter-iv4-heisses-gelenk.md`],
  [V-SeptArthritis], [`chapter-v-bakterielle-arthritis-kurz.md`],
  [VI-1 Geriatrie], [`chapter-vi1-geriatrie.md`],
)

#text(size: 8.5pt, fill: luma(80))[
  S1-Anker nur indirekt über diese S2-Kapitel (CES, bakterielle Arthritis, IfSG,
  BLS, Geriatrie, Flaggen/D-RISC).
]

// ── Critical Claims n/a ────────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#callout(title: [Critical Claims: n/a – integration], tone: "info")[
  Actions aus den Quellenkapiteln; *keine* neuen RF/Schwellen. Prüfanker nur
  als Verweis — nicht neu operationalisiert.
]

#styled-table(
  columns: (0.25fr, 1.4fr, 1.1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8pt)[\#],
    text(fill: white, weight: "bold", size: 8pt)[Action-Cluster (aus Quelle)],
    text(fill: white, weight: "bold", size: 8pt)[Quellenkapitel],
  ),
  [1],
  [CES-Flags → *112 / ED*; HVT-KI; Wurzeltod-Trugschluss],
  [`→ III-5-Cauda` · `→ V-Cauda` · `→ IV-2`],
  [2],
  [Unilateral ohne CES → *Arzt gleichtags* (Split)],
  [`→ IV-2` · `→ V-Cauda`],
  [3],
  [Heißes Gelenk + Fieber ≥ 38,5 °C + AZ↓ → *112*],
  [`→ IV-4` · `→ V-SeptArthritis`],
  [4],
  [Heißes Gelenk + Non-weight-bearing ohne Sepsis → *ED noch heute*],
  [`→ IV-4` · `→ V-SeptArthritis`],
  [5],
  [Meningismus + Fieber/Petechien → *112*; § 24 / Melde-Logik],
  [`→ I-4`],
  [6],
  [Masern/hochkontagiös → gleichtags GA/Arzt, keine Wartezimmer-Exposition],
  [`→ I-4`],
  [7],
  [Keine normale Atmung → *112 + CPR + AED*; 116117 ≠ 112],
  [`→ III-2`],
  [8],
  [Delir → gleichtags–ED; Sturz+Antikoag/SHT → *112 / ED*],
  [`→ VI-1`],
  [9],
  [R+I+S→C; Default-to-Danger],
  [`→ II-1`],
)

#callout(title: [Human-in-the-loop], tone: "info")[
  Transfer-/Prüfungsentwurf. Alle Triage- und Rechtsaussagen müssen mit den
  freigegebenen Wellenkapiteln und deren Human-/Jurist-Freigabe übereinstimmen.
  *Keine* neuen klinischen Fakten. IfSG-Anteile: *≠ Jurist-Freigabe* (`→ I-4`).
  Entwurf ≠ freigegebener Buchkanon.
]

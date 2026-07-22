// compose-chapter · creative-first
// catalog_version: 0.1.0 (preferred library, advisory)
// brief: domains/medical/briefs/iv2-rueckenschmerz-neuro.brief.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-iv2-rueckenschmerz-neuro.md
// tools: bookkit, bookkit-didactics, fletcher 0.5.8, cetz 0.5.2, pilot visual.typ
// S4 graphic: entscheidungs-flow recreate module (medical-graphics B1)
// wave: 2026-07-welle-03-final-10 · v2 creative redesign
// Claims: copy-through · no invented thresholds

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/pilots/kursbuch-welle-03-compose/lib/visual.typ": *
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
#import "/toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ": (
  entscheidungs-flow-rueckenschmerz,
)

#chapter-opener(
  title: [Rückenschmerz mit neurologischen Zeichen],
  lead: [CES und andere Must-not-miss *vor* jeder „Lumbago“-Deutung · Leitsymptom · Kursbuch IV-2],
  number: "IV-2",
)

// ── Gatekeeper ─────────────────────────────────────────────────
#cave(title: [Gatekeeper — CES / Sattel / Blase / bilateral])[
  Sattel-/Sphinkterstörung oder rasch progrediente / bilaterale Beinschwäche →
  *Stop PT, 112/ED* — nicht mobilisieren, nicht erst deblockieren.
  *Absolute KI* für HVT, Traktion, forcierte LWS-Mobilisation bei CES-, Infekt-,
  Fraktur- oder Tumorverdacht. Detail CES-Handlungskarte: `→ III-5-Cauda` ·
  Illness Script: `→ V-Cauda`.
]

#process-pathway(
  (
    [First-Look\ / vital?],
    [Red-Flag-\ Box],
    [R / I / S\ Checks],
    [Ergebnis C\ Handlung],
  ),
  title: [Entscheidungs-Flow (Scan < 10 s)],
  color: palette.danger,
)

// ── Einstieg ───────────────────────────────────────────────────
== Einstiegsfrage

#callout(title: [Erste Sicherheitsfrage], tone: "warning")[
  Patient meldet *Kreuzschmerz* — oft mit Beinstrahlung, „Ischias“, Taubheit oder
  Schwäche; manchmal als „Blockade“ oder „Muskelverspannung nach Heben“.

  *Sattel-/Sphinkterstörung oder rasch progrediente / bilaterale Beinschwäche?* →
  *Stop PT, 112/ED* — nicht erst deblockieren.

  Navigator: `→ IV-0 (geplant)` · Entscheidungsrahmen: `→ II-1`.
]

// ── Ursachenmatrix ─────────────────────────────────────────────
== Ursachenmatrix (R4 → R1)

#styled-table(
  columns: (0.4fr, 1.15fr, 1.7fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[Richtung / Ursache],
    text(fill: white, weight: "bold", size: 8.5pt)[Erste Hinweise (ohne Patho)],
  ),
  [*R4*], [*Cauda-equina-Syndrom*],
  [neue Reithosen-/Sattelanästhesie; akute Blasen-/Mastdarmstörung (Retention, fehlender Drang, Inkontinenz); bilaterale, rasch progrediente Beinschwäche],
  [*R4*], [*Progrediente bilaterale Paresen* (auch ohne volles CES-Label)],
  [Stunden–Tage Verschlechterung beidseits → Notfallpfad bis Ausschluss],
  [*R4*], [*Vaskulär (AAA / Dissektion)*],
  [reißender Rücken-/Flankenschmerz, Schock, bek. Aneurysma],
  [*R3*], [*Spinale Infektion* (Spondylodiszitis / Epiduralabszess)],
  [Fieber/Systemzeichen ± Klopfschmerz; i.v. Drogen, Immunsuppression, post-OP — Fieber kann fehlen],
  [*R3*], [*Tumor / Metastase*],
  [Tumoranamnese, ungewollter Gewichtsverlust, progredienter Ruhe-/Nachtschmerz im Verbund],
  [*R3*], [*Fraktur*],
  [Major Trauma oder hohe Frakturwahrscheinlichkeit (Osteoporose, Steroid, Sturz)],
  [*R3*], [*Neue unilaterale radikuläre Defizite ohne CES-Zeichen*],
  [Kraftverlust/Taubheit monoradikulär, *ohne* Sattel/Sphinkter → gleichtags Arzt, *keine* isolierte PT-Serie],
  [*R2*], [Unklare Progredienz / unvollständiges Screening],
  [zeitnahe ärztliche Klärung vor aggressiver LWS-Technik],
  [*R1*], [*Nicht-spezifischer Kreuzschmerz* nach negativem RF-Screen],
  [bewegungsabhängiger lokaler Lumbalschmerz, *keine* Blasen-/Sattel-Störung, *keine* progredienten Neuro-Ausfälle, *kein* Fieber/B-Symptom-Cluster],
)

// ── Entscheidungsbaum ──────────────────────────────────────────
== Entscheidungs-Flow

// Free vision → Typst recreate (medical-graphics Phase B1).
#entscheidungs-flow-rueckenschmerz()

// ── Red-Flag-Box ───────────────────────────────────────────────
== Red-Flag-Box (Rückenschmerz / Neuro)

#urgency-lanes(
  title: [Kriterium → Dringlichkeit → Aktion (Schwellen 1:1)],
  (
    ([*Neue Reithosenanästhesie* (Perineum / Sattel / Genitalien)], [112 / ED sofort], "danger",
      [Stop PT; Notruf bzw. sofortige Notaufnahme; Stichwort *Cauda-Verdacht*; Notfall-MRT ärztlich → `→ III-5-Cauda` / `→ V-Cauda`]),
    ([*Akute Blasen-/Darmstörung* (Harnverhalt, fehlender Drang, Inkontinenz, unbemerkt Stuhl)], [112 / ED sofort], "danger",
      [Wie oben; *kein* Abwarten auf „HWI“; Blasenkatheter *ärztlich*]),
    ([*Analatonie / reduz. Rektaltonus* (falls bekannt; nicht PT-Pflicht)], [112 / ED sofort], "danger",
      [Notfall-MRT, neurolog. Notfall-Assessment]),
    ([*Bilaterale, rasch progrediente Beinschwäche* / schwere Parese], [112 / ED sofort], "danger",
      [Notaufnahme; keine verzögernden PT-Tests]),
    ([*Kombination* Sattel ± Sphinkter ± bilaterale Parese], [Default-to-Danger], "danger",
      [*Ein hartes Flag reicht* — 112/ED]),
    ([Akuter Rücken-/Flankenschmerz + *Schock* / reißend / bek. AAA], [112], "danger",
      [Vaskulärer Notfall; Absolute Ruhe]),
    ([*Fieber / systemische Infektzeichen* + Rückenschmerz (± i.v. Drogen, Immunsuppression, post-OP)], [ED / gleichtags Arzt], "warning",
      [V. a. Spondylodiszitis/Abszess; PT abbrechen → `→ V-Spondylodiszitis (geplant)`]),
    ([Rücken-Ruheschmerz + i.v. Drogen/Immunsuppression *auch ohne* Fieber], [ED / gleichtags], "warning",
      [Infekt trotzdem erwägen]),
    ([Major Trauma / hohe Frakturwahrscheinlichkeit (Osteoporose, Steroid, Sturz)], [ED / gleichtags], "warning",
      [Keine Mobilisation/Manipulation bis Bildgebung/Freigabe]),
    ([Tumoranamnese, ungewollter Gewichtsverlust, progredienter Ruhe-/Nachtschmerz (Verbund)], [Arzt gleichtags], "warning",
      [Malignom/Metastase abklären; keine isolierte PT-Serie → `→ V-Tumor-Screening (geplant)`]),
    ([*Neue unilaterale radikuläre Defizite ohne CES-Zeichen*], [Arzt gleichtags], "warning",
      [Neurolog./ärztliche Evaluation; PT erst nach Freigabe/Plan]),
    ([*Keine Red Flags*, bewegungsabhängiger lokaler Lumbalschmerz], [PT möglich], "success",
      [Symptomgeleitete PT; Safety-Net CES-/Infekt-Zeichen → 112/Arzt]),
  ),
)

#callout(title: [Safety Questions — bei jedem akuten LWS-Kontakt], tone: "warning")[
  - Wasserlassen starten / Blasenfüllung spüren?
  - Taubheit Gesäß/Damm/Genitalien (Abwischen)?
  - Unbemerkt Stuhl?
  - Rasch zunehmende Schwäche *beider* Beine?
  - Trauma/Osteoporose/Steroid?
  - Fieber, i.v. Drogen, Immunsuppression, Infekt/OP?
  - Krebsanamnese, Gewichtsverlust, Ruhe-/Nachtschmerz?
]

#text(size: 8.5pt, fill: luma(80))[
  Generische Flaggen-Grundlagen: `→ II-2` / `→ II-2b (geplant)` / `→ Anh. C (geplant)`.
]

// ── R + I + S → C ──────────────────────────────────────────────
== R + I + S → C

#styled-table(
  columns: (1.6fr, 0.35fr, 0.35fr, 0.35fr, 1.5fr),
  table.header(
    text(fill: white, weight: "bold", size: 8pt)[Konstellation],
    text(fill: white, weight: "bold", size: 8pt)[R],
    text(fill: white, weight: "bold", size: 8pt)[I],
    text(fill: white, weight: "bold", size: 8pt)[S],
    text(fill: white, weight: "bold", size: 8pt)[C (Handlung)],
  ),
  [CES-Muster (Sattel und/oder Blase/Darm und/oder bilaterale progrediente Parese)],
  [4], [1], [4],
  [*112 / ED*, Stop PT, Absolute KI LWS-Intervention; `→ III-5-Cauda` / `→ V-Cauda`],
  [Schock / reißender Rücken-Flanke (AAA-Muster)],
  [4], [1], [4],
  [*112*, Absolute Ruhe],
  [Infekt-Cluster (Fieber/Systemzeichen + Rücken ± Risikokontext) oder Frakturverdacht],
  [3–4], [1], [4],
  [*ED/gleichtags*, keine Manipulation/HVT; Stop PT-Serie],
  [Tumor-Cluster (Anamnese + B-Symptome/Ruhe-Nacht im Verbund)],
  [3], [1], [3–4],
  [*Arzt gleichtags*, keine isolierte PT],
  [Neue *unilaterale* progrediente Radikulopathie *ohne* Sattel/Sphinkter],
  [3], [1–2], [3–4],
  [*Arzt gleichtags*; Safety-Aufklärung CES-Flags; keine HVT],
  [Klar nicht-spezifisch, *alle* Safety-Fragen negativ, First-Look unauffällig],
  [1], [3–4], [1–2],
  [*Treat* + Safety-Netting (bei neuem Flag sofort re-triagieren)],
)

#text(size: type-scale.small, fill: palette.text-muted)[
  *I* und *S:* Auch bei „klarer Lumbago-Anamnese“ ist der Nutzen *null*, solange R≥3 und S hoch (absolute KI für HVT/Traktion).
]

// ── Kontrastpaare ──────────────────────────────────────────────
== Kontrastpaare

#contrast-pairs(
  (
    ([Unspezifische Lumbago nach Heben], [Sattel, Blase/Darm, bilaterale Progredienz — *Schmerzstärke allein* ist weder Flag noch Ausschluss → `→ V-Cauda` · `→ III-5-Cauda`]),
    ([Einseitige Ischialgie „wie immer“], [+ Sattel/Sphinkter *oder* bilaterale rasche Verschlechterung → *112*, nicht „nur Ischias“]),
    ([Unilaterale Parese ohne CES-Zeichen], [*Arzt gleichtags* — *nicht* 112 erzwingen und *nicht* isoliert behandeln]),
    ([„Muskelverspannung + Klopfschmerz“], [Fieber/Systemzeichen / IVDU / Immunsuppression → Infekt-Pfad, *keine* Manipulation → `→ V-Spondylodiszitis (geplant)`]),
    ([„Rücken besser, aber tauber“], [Nachlassender Schmerz *plus* zunehmende Taubheit/Parese → *nicht* als Besserung → *112/ED* → `→ III-5-Cauda`]),
  ),
)

// ── Cave-Boxen ─────────────────────────────────────────────────
== Boxen (leitsymptom-spezifisch)

#cave(title: [Keine LWS-Technik bei Red-Flag-Verdacht])[
  Bei CES-, Infekt-, Fraktur- oder Tumorverdacht: *absolute KI* für HVT, Traktion,
  forcierte Mobilisation. Einzige Aufgabe: Screening, Abbruch, Notruf/Übergabe
  [CES-facts §10; Lumbago-facts §10].
]

#cave(title: [Keine validierten PT-Notfall-Scores])[
  Es gibt *keinen* validierten LWS-Score, der CES im Direktzugang ausschließt.
  Triage = klinische Red-Flag-Cluster, nicht STarT/Örebro (die dienen Chronifizierungsrisiko,
  *nicht* Notfall) [CES-facts §6; Lumbago-facts §6].
]

#cave(title: [Alter allein ist kein Hard-Flag])[
  Alter (z. B. >50) *allein* rechtfertigt hier *keine* Notfall-Eskalation; relevant im
  Verbund (Trauma/Osteoporose, Tumor, Systemzeichen) [Lumbago-facts §6].
]

#section-break()

== Master- & Notfall-Verweise

- Cauda equina (Illness Script) → `V-Cauda`
- CES Erstkontakt-Handlung → `III-5-Cauda`
- D-RISC / Drei-Achsen → `II-1`
- Spondylodiszitis / spinaler Infekt → `V-Spondylodiszitis (geplant)`
- Tumor-Screening MSK → `V-Tumor-Screening (geplant)`
- BLS / Kollaps → `III-2`
- Scope / keine Eigen-AM → `I-3 (geplant)` / `I-5 (geplant)`

== Quellen

+ BÄK, KBV, AWMF. Nationale VersorgungsLeitlinie Nicht-spezifischer Kreuzschmerz. Langfassung 2. Aufl. 2017 (abgelaufen/archiviert).
+ DGOU. S2k-Leitlinie Spezifischer Kreuzschmerz. AWMF 187-059. 2024.
+ AWMF. S3-Leitlinie Diagnostik und Therapie der akuten Querschnittlähmung (030-070l). 2025.
+ S1 Master: `cauda-equina-syndrom-facts.md` · `lumbago-akuter-nicht-spezifische-facts.md`
+ Optional stützend: `spondylodiszitis-facts.md` — Writer-GO: Zweitquelle Infekt-Zeile.

// ── Critical Claims ────────────────────────────────────────────
#section-break()

== Critical Claims (Audit)

#text(size: 9pt, fill: luma(60))[
  Anhang / Audit-Tafel — *nicht* Handlungspfad. Claims unverändert aus Content (copy-through).
]

1. Neue Reithosen-/Sattelanästhesie → *112 / ED*, Stop PT, Absolute KI lumbale Intervention
2. Akute Blasen-/Darmstörung (Retention, fehlender Drang, Inkontinenz) → *112 / ED*; keine fixen Restharn-ml als PT-Triage
3. Bilaterale, rasch progrediente Beinschwäche / schwere Parese → *112 / ED*, keine isolierte PT
4. CES-Cluster (Sattel und/oder Sphinkter) in Lumbago-S1 ebenfalls → *112*, Behandlung stoppen, nicht gehen lassen
5. *Split:* Neue *unilaterale* radikuläre Defizite *ohne* CES-Zeichen → *Arzt gleichtags*, nicht 112-Default und nicht Treat-alone
6. *Split Treat:* Keine Red Flags, bewegungsabhängiger lokaler Lumbalschmerz → PT möglich + Safety-Netting
7. Fieber/Systemzeichen + Rückenschmerz (± IVDU/Immunsuppression/post-OP) → ED/gleichtags, keine Manipulation
8. Absolute KI HVT/Traktion/forcierte Mobilisation bei jedem RF-Verdacht (CES, Infekt, Fraktur, Tumor)
9. Keine validierten PT-Scores zum CES-Ausschluss; STarT/Örebro ≠ Notfall-Triage
10. Default-to-Danger: unklare perineale Taubheit / unklare Blase → 112/ED, nicht fortgesetzte PT
11. Nachlassender Rückenschmerz bei zunehmender Taubheit/Parese *nicht* als Besserung werten

#callout(title: [Human-in-the-loop], tone: "info")[
  Klinische Claims und Triage-Schwellen (112 vs. ED vs. gleichtags Arzt) vor Publikation
  fachlich freigeben. NVL Kreuzschmerz als *archiviert* kennzeichnen; Primär-Triage stützt
  sich auf AWMF 187-059 / 030-070 + CES-S1. Multi-S1-Splits (CES-Notfall vs. unilaterale
  Radikulopathie vs. Treat-Lumbago) nicht glätten. Spondylodiszitis/Tumor nur orientierend —
  eigene Master-Kapitel `(geplant)`. Kein Patho-Essay; Detail `→ V-Cauda`.
]

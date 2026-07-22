// Auto-generated from chapter-iv2-rueckenschmerz-neuro.md — layout only; clinical text not rewritten.
// Source: Kursbuch pilot 2026-07-welle-03-final-10
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
// Phase B1 recreate of free vision (medical-graphics): Nano Banana free → Typst + icons
#import "/toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ": (
  entscheidungs-flow-rueckenschmerz,
)

#chapter-opener(
  title: [IV-2 Rückenschmerz mit neurologischen Zeichen],
  lead: [Kursbuch-Pilot IV-2 · Layout via bookkit + bookkit-didactics],
)

#tag[IV-2] #badge[pilot]

*Lernziel:* CES und andere Must-not-miss *vor* jeder „Lumbago“-Deutung; Blase/Sattel/bilaterale Progredienz → *112/ED*, nicht mobilisieren. Unspezifische Lumbago erst nach negativem Red-Flag-Screen.

#section-break()

== Einstiegsfrage

Patient meldet *Kreuzschmerz* — oft mit Beinstrahlung, „Ischias“, Taubheit oder Schwäche; manchmal als „Blockade“ oder „Muskelverspannung nach Heben“.

*Erste Sicherheitsfrage:* Sattel-/Sphinkterstörung oder rasch progrediente / bilaterale Beinschwäche? → *Stop PT, 112/ED* — nicht erst deblockieren.

Navigator-Kontext: `→ IV-0 (geplant)` · Entscheidungsrahmen: `→ II-1`.

#section-break()

== Ursachenmatrix (R4 → R1)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[Richtung / Ursache],
    text(fill: white, weight: "bold", size: 8.5pt)[Erste Hinweise (ohne Patho)],
  ),
  [*R4*],
  [*Cauda-equina-Syndrom*],
  [neue Reithosen-/Sattelanästhesie; akute Blasen-/Mastdarmstörung (Retention, fehlender Drang, Inkontinenz); bilaterale, rasch progrediente Beinschwäche],
  [*R4*],
  [*Progrediente bilaterale Paresen* (auch ohne volles CES-Label)],
  [Stunden–Tage Verschlechterung beidseits → Notfallpfad bis Ausschluss],
  [*R4*],
  [*Vaskulär (AAA / Dissektion)*],
  [reißender Rücken-/Flankenschmerz, Schock, bek. Aneurysma],
  [*R3*],
  [*Spinale Infektion* (Spondylodiszitis / Epiduralabszess)],
  [Fieber/Systemzeichen ± Klopfschmerz; i.v. Drogen, Immunsuppression, post-OP — Fieber kann fehlen],
  [*R3*],
  [*Tumor / Metastase*],
  [Tumoranamnese, ungewollter Gewichtsverlust, progredienter Ruhe-/Nachtschmerz im Verbund],
  [*R3*],
  [*Fraktur*],
  [Major Trauma oder hohe Frakturwahrscheinlichkeit (Osteoporose, Steroid, Sturz)],
  [*R3*],
  [*Neue unilaterale radikuläre Defizite ohne CES-Zeichen*],
  [Kraftverlust/Taubheit monoradikulär, *ohne* Sattel/Sphinkter → gleichtags Arzt, *keine* isolierte PT-Serie],
  [*R2*],
  [Unklare Progredienz / unvollständiges Screening],
  [zeitnahe ärztliche Klärung vor aggressiver LWS-Technik],
  [*R1*],
  [*Nicht-spezifischer Kreuzschmerz* nach negativem RF-Screen],
  [bewegungsabhängiger lokaler Lumbalschmerz, *keine* Blasen-/Sattel-Störung, *keine* progredienten Neuro-Ausfälle, *kein* Fieber/B-Symptom-Cluster],
)

#section-break()

== Entscheidungs-Flow

// Free vision → Typst recreate (medical-graphics Phase B1).
// Vision: domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png
#entscheidungs-flow-rueckenschmerz()

#section-break()

== Red-Flag-Box (Rückenschmerz / Neuro)

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Kriterium],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit],
    text(fill: white, weight: "bold", size: 8.5pt)[Aktion],
  ),
  [*Neue Reithosenanästhesie* (Perineum / Sattel / Genitalien)],
  [*112 / ED sofort*],
  [Stop PT; Notruf bzw. sofortige Notaufnahme; Stichwort *Cauda-Verdacht*; Notfall-MRT ärztlich → `→ III-5-Cauda` / `→ V-Cauda`],
  [*Akute Blasen-/Darmstörung* (Harnverhalt, fehlender Drang, Inkontinenz, unbemerkt Stuhl)],
  [*112 / ED sofort*],
  [Wie oben; *kein* Abwarten auf „HWI“; Blasenkatheter *ärztlich*],
  [*Analatonie / reduz. Rektaltonus* (falls bekannt; nicht PT-Pflicht)],
  [*112 / ED sofort*],
  [Notfall-MRT, neurolog. Notfall-Assessment],
  [*Bilaterale, rasch progrediente Beinschwäche* / schwere Parese],
  [*112 / ED sofort*],
  [Notaufnahme; keine verzögernden PT-Tests],
  [*Kombination* Sattel ± Sphinkter ± bilaterale Parese],
  [*112 / ED sofort*],
  [*Default-to-Danger* — ein hartes Flag reicht],
  [Akuter Rücken-/Flankenschmerz + *Schock* / reißend / bek. AAA],
  [*112*],
  [Vaskulärer Notfall; Absolute Ruhe],
  [*Fieber / systemische Infektzeichen* + Rückenschmerz (± i.v. Drogen, Immunsuppression, post-OP)],
  [*ED / gleichtags Arzt*],
  [V. a. Spondylodiszitis/Abszess; PT abbrechen → `→ V-Spondylodiszitis (geplant)`],
  [Rücken-Ruheschmerz + i.v. Drogen/Immunsuppression *auch ohne* Fieber],
  [*ED / gleichtags*],
  [Infekt trotzdem erwägen],
  [Major Trauma / hohe Frakturwahrscheinlichkeit (Osteoporose, Steroid, Sturz)],
  [*ED / gleichtags*],
  [Keine Mobilisation/Manipulation bis Bildgebung/Freigabe],
  [Tumoranamnese, ungewollter Gewichtsverlust, progredienter Ruhe-/Nachtschmerz (Verbund)],
  [*Arzt gleichtags*],
  [Malignom/Metastase abklären; keine isolierte PT-Serie → `→ V-Tumor-Screening (geplant)`],
  [*Neue unilaterale radikuläre Defizite ohne CES-Zeichen*],
  [*Arzt gleichtags*],
  [Neurolog./ärztliche Evaluation; PT erst nach Freigabe/Plan],
  [*Keine Red Flags*, bewegungsabhängiger lokaler Lumbalschmerz],
  [*PT möglich*],
  [Symptomgeleitete PT; Safety-Net CES-/Infekt-Zeichen → 112/Arzt],
)

*Safety Questions (bei jedem akuten LWS-Kontakt):* Wasserlassen starten / Blasenfüllung spüren? Taubheit Gesäß/Damm/Genitalien (Abwischen)? Unbemerkt Stuhl? Rasch zunehmende Schwäche *beider* Beine? Trauma/Osteoporose/Steroid? Fieber, i.v. Drogen, Immunsuppression, Infekt/OP? Krebsanamnese, Gewichtsverlust, Ruhe-/Nachtschmerz?

Generische Flaggen-Grundlagen: `→ II-2` / `→ II-2b (geplant)` / `→ Anh. C (geplant)`.

#section-break()

== R + I + S → C

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Konstellation],
    text(fill: white, weight: "bold", size: 8.5pt)[R],
    text(fill: white, weight: "bold", size: 8.5pt)[I],
    text(fill: white, weight: "bold", size: 8.5pt)[S],
    text(fill: white, weight: "bold", size: 8.5pt)[C (Handlung)],
  ),
  [CES-Muster (Sattel und/oder Blase/Darm und/oder bilaterale progrediente Parese)],
  [4],
  [1],
  [4],
  [*112 / ED*, Stop PT, Absolute KI LWS-Intervention; `→ III-5-Cauda` / `→ V-Cauda`],
  [Schock / reißender Rücken-Flanke (AAA-Muster)],
  [4],
  [1],
  [4],
  [*112*, Absolute Ruhe],
  [Infekt-Cluster (Fieber/Systemzeichen + Rücken ± Risikokontext) oder Frakturverdacht],
  [3–4],
  [1],
  [4],
  [*ED/gleichtags*, keine Manipulation/HVT; Stop PT-Serie],
  [Tumor-Cluster (Anamnese + B-Symptome/Ruhe-Nacht im Verbund)],
  [3],
  [1],
  [3–4],
  [*Arzt gleichtags*, keine isolierte PT],
  [Neue *unilaterale* progrediente Radikulopathie *ohne* Sattel/Sphinkter],
  [3],
  [1–2],
  [3–4],
  [*Arzt gleichtags*; Safety-Aufklärung CES-Flags; keine HVT],
  [Klar nicht-spezifisch, *alle* Safety-Fragen negativ, First-Look unauffällig],
  [1],
  [3–4],
  [1–2],
  [*Treat* + Safety-Netting (bei neuem Flag sofort re-triagieren)],
)

*I* und *S:* Auch bei „klarer Lumbago-Anamnese“ ist der Nutzen *null*, solange R≥3 und S hoch (absolute KI für HVT/Traktion).

#section-break()

== Kontrastpaare

#styled-table(
  columns: (1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Sieht aus wie …],
    text(fill: white, weight: "bold", size: 8.5pt)[Muss-not-miss wenn …],
    text(fill: white, weight: "bold", size: 8.5pt)[Verweis],
  ),
  [Unspezifische Lumbago nach Heben],
  [Sattel, Blase/Darm, bilaterale Progredienz — *Schmerzstärke allein* ist weder Flag noch Ausschluss],
  [`→ V-Cauda` · `→ III-5-Cauda`],
  [Einseitige Ischialgie „wie immer“],
  [+ Sattel/Sphinkter *oder* bilaterale rasche Verschlechterung → *112*, nicht „nur Ischias“],
  [RF-Box · CES-S1],
  [Unilaterale Parese ohne CES-Zeichen],
  [*Arzt gleichtags* — *nicht* 112 erzwingen und *nicht* isoliert behandeln],
  [Split CES ⚕️ vs. Lumbago Treat],
  [„Muskelverspannung + Klopfschmerz“],
  [Fieber/Systemzeichen / IVDU / Immunsuppression → Infekt-Pfad, *keine* Manipulation],
  [`→ V-Spondylodiszitis (geplant)`],
  [„Rücken besser, aber tauber“],
  [Nachlassender Schmerz *plus* zunehmende Taubheit/Parese → *nicht* als Besserung → *112/ED*],
  [`→ III-5-Cauda`],
)

#section-break()

== Master- & Notfall-Verweise

#styled-table(
  columns: (1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[Wenn Verdacht auf …],
    text(fill: white, weight: "bold", size: 8.5pt)[Ziel],
  ),
  [Cauda equina (Illness Script)],
  [`→ V-Cauda`],
  [CES Erstkontakt-Handlung],
  [`→ III-5-Cauda`],
  [D-RISC / Drei-Achsen],
  [`→ II-1`],
  [Spondylodiszitis / spinaler Infekt],
  [`→ V-Spondylodiszitis (geplant)`],
  [Tumor-Screening MSK],
  [`→ V-Tumor-Screening (geplant)`],
  [BLS / Kollaps],
  [`→ III-2`],
  [Scope / keine Eigen-AM],
  [`→ I-3 (geplant)` / `→ I-5 (geplant)`],
)

#section-break()

== Boxen (leitsymptom-spezifisch)

=== Keine LWS-Technik bei Red-Flag-Verdacht

Bei CES-, Infekt-, Fraktur- oder Tumorverdacht: *absolute KI* für HVT, Traktion, forcierte Mobilisation. Einzige Aufgabe: Screening, Abbruch, Notruf/Übergabe [CES-facts §10; Lumbago-facts §10].

=== Keine validierten PT-Notfall-Scores

Es gibt *keinen* validierten LWS-Score, der CES im Direktzugang ausschließt. Triage = klinische Red-Flag-Cluster, nicht STarT/Örebro (die dienen Chronifizierungsrisiko, *nicht* Notfall) [CES-facts §6; Lumbago-facts §6].

=== Alter allein ist kein Hard-Flag

Alter (z. B. \>50) *allein* rechtfertigt hier *keine* Notfall-Eskalation; relevant im Verbund (Trauma/Osteoporose, Tumor, Systemzeichen) [Lumbago-facts §6].

#section-break()

== Quellen

+ BÄK, KBV, AWMF. Nationale VersorgungsLeitlinie Nicht-spezifischer Kreuzschmerz. Langfassung 2. Aufl. 2017 (abgelaufen/archiviert). URL: https://register.awmf.org/assets/guidelines/nvl-007l_S3_Kreuzschmerz_2017-03-abgelaufen.pdf (Abruf: 2026-07-14).
+ DGOU. S2k-Leitlinie Spezifischer Kreuzschmerz. AWMF 187-059. 2024. URL: https://register.awmf.org/assets/guidelines/187-059l_S2k_Spezifischer-Kreuzschmerz_2024-08.pdf (Abruf: 2026-07-14).
+ AWMF. S3-Leitlinie Diagnostik und Therapie der akuten Querschnittlähmung (030-070l). 2025. URL: https://register.awmf.org/assets/guidelines/030-070l_S3_Diagnostik-Therapie-akuten-Querschnittlaehmung_2025-04.pdf (Abruf: 2026-07-14).
+ S1 Master: `content/dossiers/krankheitslehre/cauda-equina-syndrom-facts.md` (`ready-for-human`).
+ S1 Master: `content/dossiers/krankheitslehre/lumbago-akuter-nicht-spezifische-facts.md` (`ready-for-human`).
+ Optional stützend: `content/dossiers/krankheitslehre/spondylodiszitis-facts.md` (`ready-for-human`) — Writer-GO: Zweitquelle Infekt-Zeile.

#section-break()

== Critical Claims (Audit)

#styled-table(
  columns: (1fr, 1fr, 1fr, 1fr),
  table.header(
    text(fill: white, weight: "bold", size: 8.5pt)[\#],
    text(fill: white, weight: "bold", size: 8.5pt)[Claim (prüfbar)],
    text(fill: white, weight: "bold", size: 8.5pt)[Quelle im S1],
    text(fill: white, weight: "bold", size: 8.5pt)[Dringlichkeit/Aktion falls RF],
  ),
  [1],
  [Neue Reithosen-/Sattelanästhesie → *112 / ED*, Stop PT, Absolute KI lumbale Intervention],
  [CES-facts §7, §9–10; AWMF 187-059],
  [*112 / ED*],
  [2],
  [Akute Blasen-/Darmstörung (Retention, fehlender Drang, Inkontinenz) → *112 / ED*; keine fixen Restharn-ml als PT-Triage],
  [CES-facts §7, §12; Lumbago-facts §7],
  [*112 / ED*],
  [3],
  [Bilaterale, rasch progrediente Beinschwäche / schwere Parese → *112 / ED*, keine isolierte PT],
  [CES-facts §7; Lumbago-facts §7, §9],
  [*112 / ED*],
  [4],
  [CES-Cluster (Sattel und/oder Sphinkter) in Lumbago-S1 ebenfalls → *112*, Behandlung stoppen, nicht gehen lassen],
  [Lumbago-facts §7 (CES-Zeile)],
  [*112*],
  [5],
  [*Split:* Neue *unilaterale* radikuläre Defizite *ohne* CES-Zeichen → *Arzt gleichtags*, nicht 112-Default und nicht Treat-alone],
  [CES-facts §9 (⚕️); Lumbago-facts §7],
  [*Arzt gleichtags*],
  [6],
  [*Split Treat:* Keine Red Flags, bewegungsabhängiger lokaler Lumbalschmerz → PT möglich + Safety-Netting],
  [Lumbago-facts §7, §9 (👐)],
  [Treat + Re-Triage],
  [7],
  [Fieber/Systemzeichen + Rückenschmerz (± IVDU/Immunsuppression/post-OP) → ED/gleichtags, keine Manipulation],
  [Lumbago-facts §7; Spondylodiszitis-facts §7 (stützend)],
  [*ED / gleichtags*],
  [8],
  [Absolute KI HVT/Traktion/forcierte Mobilisation bei jedem RF-Verdacht (CES, Infekt, Fraktur, Tumor)],
  [CES-facts §10; Lumbago-facts §10],
  [S4 / Stop],
  [9],
  [Keine validierten PT-Scores zum CES-Ausschluss; STarT/Örebro ≠ Notfall-Triage],
  [CES-facts §6; Lumbago-facts §6],
  [Klinische RF-Cluster],
  [10],
  [Default-to-Danger: unklare perineale Taubheit / unklare Blase → 112/ED, nicht fortgesetzte PT],
  [CES-facts §9; Lumbago-facts §12 (112 vs. ED-Schwelle)],
  [*112 / ED*],
  [11],
  [Nachlassender Rückenschmerz bei zunehmender Taubheit/Parese *nicht* als Besserung werten],
  [CES-facts §5 (Red Herring)],
  [Re-Triage / 112–ED],
)

#section-break()

#callout(title: [Hinweis], tone: "warning")[*Human-in-the-loop:* Klinische Claims und Triage-Schwellen (112 vs. ED vs. gleichtags Arzt) vor Publikation fachlich freigeben. NVL Kreuzschmerz als *archiviert* kennzeichnen; Primär-Triage stützt sich auf AWMF 187-059 / 030-070 + CES-S1. Multi-S1-Splits (CES-Notfall vs. unilaterale Radikulopathie vs. Treat-Lumbago) nicht glätten. Spondylodiszitis/Tumor nur orientierend — eigene Master-Kapitel `(geplant)`. Kein Patho-Essay; Detail `→ V-Cauda`.]


#import "templates/showcase-theme.typ": T, apply-theme
#import "templates/showcase-components.typ": *

#set text(lang: "de")
#apply-theme()

#set page(
  header: context [
    #grid(columns: (1fr, 1fr), gutter: 0pt)[
      [#text(font: T.fonts.ui, size: 9pt, fill: T.c.muted)[Typst Showcase]],
      [#align(right)[#text(font: T.fonts.ui, size: 9pt, fill: T.c.muted)[Modernes Buchdesign]]],
    ]
  ],
  footer: context [
    #grid(columns: (1fr, 1fr, 1fr), gutter: 0pt)[
      [#text(font: T.fonts.ui, size: 9pt, fill: T.c.muted)[HP Physio · Clinical Reasoning]],
      [#align(center)[#text(font: T.fonts.ui, size: 9pt, fill: T.c.muted)[#counter(page).display()]]],
      [#align(right)[#text(font: T.fonts.ui, size: 9pt, fill: T.c.muted)[v0.1 · draft]]],
    ]
  ],
)

#align(center)[
  #v(18mm)
  #text(font: T.fonts.ui, size: 34pt, weight: "bold")[Typst Showcase]
  #v(6mm)
  #text(font: T.fonts.ui, size: 16pt, fill: T.c.primary)[Vom Basislayout bis zur Produktionslogik]
  #v(14mm)

  #box(
    fill: T.c.soft_primary,
    stroke: (paint: T.c.primary, thickness: 1pt),
    radius: 12pt,
    inset: 14pt,
  )[
    Dieses Dokument ist ein vollwertiges Showcase.
    Es zeigt Komponenten, Raster, Layering, Seitentypen, Referenzen,
    Glossar und QA-Checklisten fuer ein medizinisches Buchprojekt.
  ]

  #v(18mm)
  #text(size: 10pt, fill: T.c.muted)[Build: `typst compile --root . src/typst-showcase.typ dist/typst-showcase.pdf`]
]

#pagebreak()

= Inhalt
#text(size: T.size.small, fill: T.c.muted)[Das Inhaltsverzeichnis wird aus den Ueberschriften erzeugt.]
#outline(depth: 3)

#pagebreak()

= 1 Grundlagen: Text, Styles, Tokens
== 1.1 Design-System zuerst

Ein stabiles Buchlayout beginnt mit einem System:
Tokens fuer Schriften, Farben und Abstaende sowie wiederverwendbare Komponenten.
So bleiben Aenderungen lokal und das Gesamtlayout konsistent.

#Pearl(
  "Prinzip",
  [
    Behandle dein Buch wie Software: Erst Architektur, dann Content.
    Theme und Komponenten sparen spaeter viele manuelle Korrekturen.
  ],
)

== 1.2 Inline Styling

Inline-Styling bleibt moeglich: #text(weight: "bold")[fett],
#text(style: "italic")[kursiv], #text(fill: T.c.primary)[Akzentfarbe].
Fuer grosse Projekte sollte Styling aber vor allem semantisch ueber Komponenten erfolgen.

#margin-note[
  In grossen Projekten vermeiden semantische Komponenten inkonsistente Formatierung.
]

== 1.3 Vertikaler Rhythmus

#text(size: T.size.small, fill: T.c.muted)[Mit `#v()` steuerst du den Seitenrhythmus.]

#v(T.s.at("4"))
Dieser Absatz steht nach Abstand `T.s.4`.
#v(T.s.at("2"))
Dieser Absatz steht nach Abstand `T.s.2`.

#pagebreak()

= 2 Didaktische Komponenten
== 2.1 Red Flags, Warnings, Pearls

#RedFlag(
  "Red Flags sind Trigger, keine Diagnosen",
  [
    Red Flags veraendern die Priorisierung.
    Entscheidend ist die Kombination aus Verlauf, Risikoprofil und Befunden.
  ],
)

#Warning(
  "Typischer Fehler",
  [
    Einzelne Warnzeichen isoliert ueberwerten oder relevante Kombinationen ignorieren.
  ],
)

#Pearl(
  "Didaktischer Aufbau",
  [
    Ein robustes Muster fuer Fachtexte:
    Definition, Bedeutung, Handlungsregel, Beispiel.
  ],
)

== 2.2 Algorithmus-Karte

#Algorithm(
  "Hypothesengetriebenes Vorgehen",
  (
    [Gefahrenscreening und Vital-Check],
    [Hypothesenraum: wahrscheinlich vs. gefaehrlich],
    [Tests priorisieren: gefaehrlich zuerst ausschliessen],
    [Verlaufskriterien und Re-Evaluation festlegen],
  ),
)

#pagebreak()

= 3 Raster: Spalten, Module, Asymmetrie
== 3.1 Zweispaltiges Layout

#grid(columns: (2.2fr, 1fr), gutter: 14pt)[
  [
    #text(font: T.fonts.ui, weight: "bold")[Haupttextspalte]
    #v(6pt)
    Der Fliesstext bleibt ruhig, waehrend die Sidebar didaktische Anker setzt:
    Definitionen, Pitfalls, Evidenz und Minicases.
  ],
  [
    #Info(
      "Evidenz-Notiz",
      [
        Experten nutzen Muster, Novizen nutzen Regeln.
        Beide profitieren von strukturierten Feedback-Schleifen (@norman2005).
      ],
    )
    #v(10pt)
    #badge("Sidebar", fill: T.c.primary)
  ],
]

== 3.2 Asymmetrische Module

#grid(columns: (1.6fr, 1fr, 1fr), gutter: 10pt)[
  [
    #Pearl(
      "Gestaltprinzip",
      [
        Asymmetrie plus ruhige Typografie und klare Abstaende erzeugen ein editoriales Erscheinungsbild.
      ],
    )
  ],
  [
    #box(fill: white, stroke: (paint: T.c.line, thickness: 1pt), radius: T.radius, inset: 10pt)[
      #text(font: T.fonts.ui, weight: "bold")[Mini-Checkliste]
      #v(6pt)
      - Verlauf
      - Risiko
      - Muster
      - Tests
    ]
  ],
  [
    #box(fill: T.c.soft_warn, stroke: (paint: T.c.warn, thickness: 1pt), radius: T.radius, inset: 10pt)[
      #text(font: T.fonts.ui, weight: "bold", fill: T.c.warn)[Pitfall]
      #v(6pt)
      "Nur mechanisch" ist selten eine valide Abschlussbewertung.
    ]
  ],
]

#pagebreak()

= 4 Figuren, Overlays, Layering
== 4.1 Shapes als Grafiksystem

#Fig(
  [
    #stack[
      #rect(width: 100%, height: 44mm, fill: T.c.soft_info, radius: 10pt)
      #place(center)[
        #box(
          width: 70%,
          fill: white,
          stroke: (paint: T.c.info, thickness: 1pt),
          radius: 12pt,
          inset: 12pt,
        )[
          #text(font: T.fonts.ui, weight: "bold")[Clinical Reasoning: drei Ebenen]
          #v(6pt)
          #text(size: T.size.small, fill: T.c.muted)[
            1) Gefahrenscreening · 2) Muster plus Hypothesen · 3) Testen plus Verlauf
          ]
        ]
      ]
      #place(top + left, dx: 10pt, dy: 10pt)[#badge("Schema", fill: T.c.info)]
    ]
  ],
  "Layering mit Hintergrund, Overlay-Karte und Badge.",
) <fig:layering>

Siehe @fig:layering.

== 4.2 Bildoverlay-Prinzip

#stack[
  #rect(width: 100%, height: 55mm, fill: rgb(230, 230, 230))
  #rect(width: 100%, height: 55mm, fill: rgb(40, 40, 40))
  #place(bottom + left, dx: 12pt, dy: 12pt)[
    #text(font: T.fonts.ui, size: 18pt, fill: white, weight: "bold")[Fallvignette]
    #v(2pt)
    #text(font: T.fonts.ui, size: 10pt, fill: rgb(235, 235, 235))[
      Leitsymptom · Verlauf · Risiko · naechster Schritt
    ]
  ]
]

#pagebreak()

= 5 Fortgeschrittene Typografie
== 5.1 Drop-Cap-Effekt

#grid(columns: (auto, 1fr), gutter: 5pt)[
  [#text(font: T.fonts.ui, size: 30pt, weight: "bold")[C]],
  [
    linical Reasoning braucht Struktur unter Unsicherheit:
    Hypothesen explizit machen, Gefahren priorisieren und Verlauf messbar planen.
  ],
]

== 5.2 Mehrspaltensatz

#columns(2)[
  Dieses Beispiel zeigt Mehrspaltensatz fuer kompakte Inhalte.
  Besonders geeignet fuer Zusammenfassungen, Checklisten und Pruefungsteile.

  Saubere Ueberschriftenebenen und ein konsistenter Rhythmus verhindern visuelle Unruhe.
]

#pagebreak()

= 6 Modulare Seitentypen
== 6.1 Kapitelstart

#align(center)[
  #text(size: 40pt, font: T.fonts.ui, weight: "bold")[Kapitel 4]
  #v(5mm)
  #text(size: 20pt, font: T.fonts.ui)[Differentialdiagnostik]
]

#v(12pt)
#Info(
  "Seitentyp",
  [
    Kapitelstarter koennen bewusst grosszuegig gesetzt werden,
    damit visuelle Atemraeume zwischen Einheiten entstehen.
  ],
)

#pagebreak()

== 6.2 Algorithmusseite

#Algorithm(
  "Decision Path",
  (
    [Red Flags priorisiert erfassen],
    [Hypothesenraum strukturieren],
    [Gefaehrlichste Pfade zuerst absichern],
    [Re-Evaluation und Eskalationsregeln definieren],
  ),
)

#pagebreak()

= 7 Struktur und Querverweise
== 7.1 Referenzierbare Inhalte

#figure(
  [
    #box(
      width: 80%,
      fill: white,
      stroke: (paint: T.c.line, thickness: 1pt),
      radius: 10pt,
      inset: 14pt,
    )[
      #text(font: T.fonts.ui, weight: "bold")[Diagnostischer Ablauf]
      #v(4pt)
      Strukturierte Priorisierung verbessert Sicherheit und Nachvollziehbarkeit.
    ]
  ],
  caption: [Referenzierbare Figure mit Label.],
) <fig:diagnosis>

Siehe @fig:diagnosis fuer den strukturierten Diagnostikansatz.

#pagebreak()

= 8 Tabellen fuer Clinical Reasoning
== 8.1 Differentialdiagnostik-Matrix

#Table(
  ("Hypothese", "Argumente dafuer und dagegen", "Prioritaet"),
  (
    ("Radikulopathie", "Dermatom, Neurologie, Provokation, Verlauf", "mittel"),
    ("Tumor oder Infektion", "Gewichtsverlust, Fieber, Nachtschmerz, Risikoprofil", "hoch"),
    ("Mechanisches Muster", "Belastungskorrelation, reproduzierbarer Schmerz", "niedrig bis mittel"),
  ),
)

#Warning(
  "Tabellenregel",
  [
    Tabellen nur so komplex wie noetig setzen.
    Klare Header, ausreichend Padding und wenige Spalten erhalten Lesbarkeit.
  ],
)

#pagebreak()

= 9 Fussnoten, Zitate, Literatur
== 9.1 Fussnoten

Fussnoten sind praezise Zusatzebenen.^[
  Sie sind ideal fuer kurze methodische Hinweise, Quellenkommentare und Begriffsabgrenzungen.
]

== 9.2 Literaturbelege

Typst kann direkt mit Bib-Dateien arbeiten: @elstein1978 und @norman2005.

#v(10pt)
#text(font: T.fonts.ui, weight: "bold")[Literaturverzeichnis]
#bibliography("data/showcase-refs.bib")

#pagebreak()

= 10 Glossar und Abkuerzungen
== 10.1 Datengetriebene Ausgabe aus YAML

#let glossary = yaml("data/showcase-glossary.yml").terms

#Info(
  "Prinzip",
  [
    Begriffe zentral pflegen und mehrfach verwenden:
    Glossar, Randnotizen, Lernkarten oder spaetere Webausgabe.
  ],
)

#v(8pt)
#text(font: T.fonts.ui, weight: "bold")[Glossar (Auszug)]
#v(8pt)

#for t in glossary [
  #box(
    fill: white,
    stroke: (paint: T.c.line, thickness: 1pt),
    radius: 10pt,
    inset: 10pt,
  )[
    #text(font: T.fonts.ui, weight: "bold")[#t.term]
    #text(size: T.size.small, fill: T.c.muted)[ (#t.short) ]
    #v(4pt)
    #t.def
  ]
  #v(8pt)
]

#pagebreak()

= 11 Komplexe Seitenkomposition
== 11.1 Clinical Reasoning Spread

#grid(columns: (2.2fr, 1fr), gutter: 14pt)[
  [
    #text(font: T.fonts.ui, size: T.size.h2, weight: "bold")[Leitsymptom: Thorakaler Schmerz]
    #v(6pt)

    Thorakaler Schmerz verlangt sichere Priorisierung:
    zuerst Gefahrenscreening, dann Hypothesenraum, dann gezielte Tests und Verlaufskriterien.

    #margin-note[
      Heuristik: Worst first, then most likely.
      Dokumentiere explizit, was ausgeschlossen wurde und warum.
    ]

    #v(10pt)
    #Algorithm(
      "Mini-Workflow fuer den Erstkontakt",
      (
        [Vital- und Gefahrencheck],
        [Hypothesenraum: gefaehrlich vs. wahrscheinlich],
        [Tests zum gezielten Rule-out],
        [Plan mit Re-Evaluation und Eskalation],
      ),
    )

    #v(10pt)
    #RedFlag(
      "Sofortige Eskalation",
      [
        Dyspnoe, Kreislaufinstabilitaet, akuter neurologischer Ausfall
        oder ploetzlich andersartige starke Schmerzen erfordern den Notfallpfad.
      ],
    )
  ],
  [
    #Pearl(
      "Didaktik",
      [
        Randspalten steuern Aufmerksamkeit:
        Definitionen, Evidenz, Pitfalls und Minicases werden schneller gescannt.
      ],
    )

    #v(10pt)

    #Fig(
      [
        #stack[
          #rect(width: 100%, height: 62mm, fill: T.c.soft_primary, radius: 10pt)
          #place(top + left, dx: 10pt, dy: 10pt)[#badge("Schema", fill: T.c.primary)]
          #place(center)[
            #grid(columns: (1fr, 1fr), gutter: 8pt)[
              [
                #box(fill: white, stroke: (paint: T.c.line, thickness: 1pt), radius: 10pt, inset: 10pt)[
                  #text(font: T.fonts.ui, weight: "bold")[Gefaehrlich]
                  #v(4pt)
                  - ACS
                  - Lungenembolie
                  - Aortendissektion
                ]
              ],
              [
                #box(fill: white, stroke: (paint: T.c.line, thickness: 1pt), radius: 10pt, inset: 10pt)[
                  #text(font: T.fonts.ui, weight: "bold")[Wahrscheinlich]
                  #v(4pt)
                  - costovertebral
                  - myofaszial
                  - BWS
                ]
              ],
            ]
          ]
        ]
      ],
      "Hypothesenraum als 2x2 Karte.",
    )
  ],
]

#pagebreak()

= 12 Preflight und QA
== 12.1 Produktionscheckliste

#Warning(
  "Prepress",
  [
    Produktionsanforderungen frueh klaeren:
    Farbprofil, Beschnitt, Rasterbildqualitaet, Lizenzlage der Fonts und PDF-Vorgaben.
  ],
)

- Bilder mit ausreichender Aufloesung (typisch 300 ppi fuer Druck)
- Vektor fuer Diagramme bevorzugen (PDF oder SVG)
- Schriftlizenzen und Einbettung verifizieren
- Pilotseiten nach jeder Layoutaenderung pruefen
- Testdruck frueh einplanen

#pagebreak()

= 13 Optional: Diagramme als Code
== 13.1 CeTZ-Template

Diagramme als Code sind versionierbar und schnell anpassbar.
Package-Versionen koennen sich aendern, deshalb Version explizit pinnen.

```typst
// Beispiel, ggf. Version anpassen:
#import "@preview/cetz:0.2.2": *
#cetz.canvas(width: 120mm, height: 60mm)[
  // nodes + edges
]
```

#Info(
  "Pragmatismus",
  [
    Fuer viele Lehrbuecher reicht Figma oder Inkscape mit SVG- oder PDF-Export.
    Codebasierte Diagramme sind besonders stark bei vielen Varianten.
  ],
)

#pagebreak()

= Ende (vorlaeufig)
Dieses Showcase stellt ein vollwertiges Buch-OS bereit:
Theme, Komponenten, Raster, Overlays, Datenquellen, Literatur und QA-Logik.

Naechste Ausbaustufe:
- Kapitelmodule in `src/chapters/`
- Seitentypen als DSL (`ChapterStart`, `CasePage`, `PatternPage`)
- Build- und QA-Automatisierung im CI

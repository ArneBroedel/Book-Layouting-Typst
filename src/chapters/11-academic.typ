// chapters/11-academic.typ — Akademisches Publizieren und Mathematik

#import "../styles/theme.typ": fonts, palette, space, type-scale
#import "../components/spreads.typ": chapter-opener, section-break
#import "../components/blocks.typ": callout, card, code-block, key-concept, pull-quote, side-note
#import "../components/inline.typ": badge, icon-text, tag
#import "../components/grids.typ": feature-grid, gallery-grid
#import "../components/layouts.typ": comparison-layout
#import "../components/tables.typ": styled-table

#chapter-opener(
  title: [Akademisches Publizieren und Mathematik],
  lead: [
    Typst bietet von Haus aus exzellente Unterstützung für Mathematik und Literaturverzeichnisse. Dennoch können bestimmte akademische Workflows — wie spezifische mathematische Notationen oder komplexe Glossare — durch Community-Pakete deutlich vereinfacht und spezialisiert werden.
  ],
)

// ════════════════════════════════════════════════════════════════
== Mathematische Kurzschreibweisen mit Physica

#import "@preview/physica:0.9.8": *

Die Eingabe komplexer mathematischer Formeln kann zeitaufwändig sein. Physica bietet hunderte von Kurzschreibweisen, um den Schreibfluss zu beschleunigen und den Quellcode lesbarer zu machen.

#comparison-layout(
  [
    *Ohne Physica*
    ```typ
    $ frac(partial f, partial x) $
    $ arrow(u) $
    $ grad f $
    ```
    #box(stroke: 1pt + luma(200), inset: 8pt, radius: 4pt, width: 100%)[
      $ frac(partial f, partial x) $
      $ arrow(u) $
      $ grad f $
    ]
  ],
  [
    *Mit Physica*
    ```typ
    $ pdv(f, x) $
    $ vu(u) $
    $ grad f, quad div va(v), quad curl va(v) $
    ```
    #box(stroke: 1pt + palette.primary, inset: 8pt, radius: 4pt, width: 100%)[
      $ pdv(f, x) $
      $ vu(u) $
      $ grad f, quad div va(v), quad curl va(v) $
    ]
  ]
)

Ebenso erleichtert das Paket die Eingabe von Matrizen, Vektoren und anderen Operatoren. Eine einfache Matrix lässt sich mit `mat` anstatt Typsts nativer `mat(...)` Syntax schreiben, falls man die Notation aus LaTeX bevorzugt.

#callout(tone: "info")[
  Physica bietet hunderte solcher Kurzschreibweisen, die stark an die gleichnamige LaTeX-Bibliothek angelehnt sind. Die vollständige Referenz finden Sie in der Dokumentation des Pakets.
]

// ════════════════════════════════════════════════════════════════
== Intelligente Abkürzungsverwaltung mit Glossarium

#import "@preview/glossarium:0.5.4": make-glossary, print-glossary, gls, glspl

#show: make-glossary

// Define a small glossary dictionary
#let dict = (
  (
    key: "EKG",
    short: "EKG",
    long: "Elektrokardiogramm",
  ),
  (
    key: "MRT",
    short: "MRT",
    long: "Magnetresonanztomographie",
  ),
  (
    key: "SpO2",
    short: "SpO2",
    long: "periphere kapillare Sauerstoffsättigung",
  ),
)

#{
  // Register dictionary (local scope to avoid leaking)
  import "@preview/glossarium:0.5.4": register-glossary
  register-glossary(dict)
}

Glossarium ermöglicht eine automatisierte Verwaltung von Abkürzungen. Beim ersten Aufruf im Text wird die vollständige Definition ausgegeben, bei jedem weiteren Aufruf lediglich die Kurzform.

- *Erste Verwendung:* Der Patient erhielt ein #gls("EKG").
- *Zweite Verwendung:* Das #gls("EKG") war unauffällig.
- *Weitere Begriffe:* Zur weiteren Diagnostik wurde ein #gls("MRT") angeordnet. Die #gls("SpO2") lag bei 98%.

#key-concept(term: [Introspection])[
  Glossarium nutzt Typsts `query()` und `state()` Mechanismen, um die erstmalige Verwendung von Begriffen über das gesamte Dokument hinweg zu verfolgen. Es speichert den Status jedes Begriffs und passt die Ausgabe bei späteren Aufrufen automatisch an.
]

#side-note(title: [Scoping])[
  Glossariums Show-Rules gelten für das gesamte Dokument. Für komplexere Projekte empfiehlt es sich, die Initialisierung zentral in der Dokumentvorlage vorzunehmen.
]

#print-glossary(dict)

// ════════════════════════════════════════════════════════════════
== Mehrere Literaturverzeichnisse mit Alexandria

#import "@preview/alexandria:0.2.2"

Der native Typst-Compiler unterstützt nur ein einziges `bibliography`-Element pro Dokument. In akademischen Arbeiten werden jedoch häufig getrennte Verzeichnisse für verschiedene Quellenarten oder Themen benötigt. Alexandria bietet hierfür eine elegante Lösung über ein Präfix-System.

Mit Präfixen wie `klinisch:` und `grundlagen:` können Sie Quellen gezielt dem jeweiligen Verzeichnis zuweisen. So verweist `@klinisch:smith2024` auf das klinische Literaturverzeichnis, während `@grundlagen:jones2023` in das Grundlagen-Verzeichnis sortiert wird.

#callout(tone: "success")[
  Alexandria umgeht die Limitierung des Compilers über Typsts Show-Rule-Interception. Das Paket fängt die nativen Bibliografie-Aufrufe ab und filtert sie nach den definierten Präfixen.
]

```typ
// Beispielhafter Aufruf mit Alexandria
#import "@preview/alexandria:0.2.2": bibliography

#heading(level: 3)[Klinische Literatur]
#bibliography("klinisch.bib", prefix: "klinisch:")

#heading(level: 3)[Grundlagenliteratur]
#bibliography("grundlagen.bib", prefix: "grundlagen:")
```

// ════════════════════════════════════════════════════════════════
== Bibliografie-Styling in Typst mit Pergamon

Während Typst CSL (Citation Style Language) für das Styling von Bibliografien nutzt, gibt es Fälle, in denen man die Formatierung direkt mit Typst-Regeln kontrollieren möchte. Pergamon ermöglicht genau dies: Typst-natives Bibliografie-Styling.

#comparison-layout(
  [
    *Standard Typst (CSL)*
    ```typ
    #bibliography("pergamon.bib", style: "apa")
    ```
    _Nutzt eine externe .csl-Datei zur Bestimmung des Layouts._
  ],
  [
    *Mit Pergamon*
    ```typ
    #import "@preview/pergamon:0.2.0": *
    #print-bibliography(
      bibliography("pergamon.bib"),
      format: "apa",
      theme: custom-theme
    )
    ```
    _Erlaubt das Überschreiben des Layouts mit Typst-Funktionen._
  ]
)

#side-note(title: [Refsections])[
  Neben dem Styling ermöglicht Pergamon auch sogenannte "Refsections" — kapitelweise Literaturverzeichnisse — und benutzerdefiniertes Filtern nach Schlüsselwörtern. Diese Funktionen sind mit reinem CSL nicht umsetzbar.
]

#section-break()

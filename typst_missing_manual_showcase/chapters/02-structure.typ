// chapters/02-structure.typ
#import "../components/admonitions.typ": note, tip, warn, checklist
#import "../components/learning.typ": learning-goals, knowledge-check
#import "../styles/theme.typ": palette, space, type

= Struktur: Kapitel, Querverweise, Footnotes, Outline

#learning-goals(
  [Du kannst ein Buch modular in Kapitel-Dateien aufteilen.],
  [Du nutzt Labels/Refs robust statt „Suchen & Ersetzen“.],
  [Du erzeugst Inhaltsverzeichnis und Listen automatisch.]
)

== Inhaltsverzeichnis
Typst erzeugt ein Outline automatisch. Du kannst es konfigurieren:

#outline(depth: 2)

== Labels & Referenzen
Du labelst *einmal* – und referenzierst überall sicher.

#note[
Beispiel: Eine wichtige Definition bekommt ein Label. Später referenzierst du sie im Fließtext.
]

#block(
  fill: palette.paper.mix(palette.muted),
  radius: 8pt,
  inset: 12pt,
)[
  *Definition*  
  Clinical Reasoning bezeichnet die Fähigkeit, Befunde, Kontext und Evidenz zu integrieren,
  um begründete Entscheidungen über Diagnostik und Intervention zu treffen.
]

Später im Text: „Wie in der Definition oben beschrieben …“

== Fußnoten
Fußnoten sind perfekt für „Nerd-Details“ (z.B. Testgüte, Leitlinienrandnotizen).
Das hält die Hauptspur lesbar.

Ein Satz mit einer Fußnote.^[
  *Nerd-Note*: Prätestwahrscheinlichkeit ist häufig der blinde Fleck in der Praxis.
]

== Wiederkehrende Strukturen als „Templates“
Typst-Komponenten sind deine didaktische Superkraft.

#checklist(
  title: "Illness Script – Minimalstruktur",
  [
    *Epidemiologie* (wer?)  
    *Mechanismus/Pathophysiologie* (warum?)  
    *Leitsymptome* (wie zeigt es sich?)  
    *Befunde/Tests* (woran erkenne ich es?)  
    *Differenzialdiagnosen* (wogegen abgrenzen?)  
    *Management* (was tue ich?)  
  ],
)

#knowledge-check(
  [Wie würdest du ein „Illness Script“ für LWS-Schmerz *ohne* Red Flags als Template anlegen?],
  [Welche Elemente brauchen *immer* eine Quelle oder Evidenzgrad?],
)


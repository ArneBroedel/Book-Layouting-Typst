// chapters/01-typography.typ
#import "../styles/theme.typ": palette, space, type
#import "../components/admonitions.typ": tip

= Typografie, die „medizinisch“ wirkt (ohne langweilig zu sein)

Die häufigste Sünde in Fachbüchern: *zu wenig Hierarchie*.
Du willst eine Seite, die wie ein „klinisches Dashboard“ wirkt: klar, ruhig, aber mit *gezielten visuellen Hooks*.

== Lead-Absatz (Leser*in abholen)
#let lead(body) = [
  #set text(size: type.lead, fill: palette.muted)
  #set par(leading: 1.45em)
  #body
]

#lead[
  Clinical Reasoning ist kein Talent, sondern ein trainierbares System.
  Wenn dein Layout diese Systematik widerspiegelt, lernt das Gehirn schneller:
  *Chunking*, *Signaling*, *Spacing* – und weniger visuelles Rauschen.
]

== „Signalwörter“ als Micro-Design
#let tag(label, color: palette.accent) = [
  #box(
    fill: color.mix(palette.paper),
    stroke: (paint: color, thickness: 0.8pt),
    radius: 99pt,
    inset: (x: 8pt, y: 2pt),
  )[
    #set text(size: type.small, weight: 700, fill: color)
    #label
  ]
]

Im Text: #tag("Hypothese") #tag("Befund") #tag("Test") #tag("Entscheidung", color: palette.warn)

== Hängepunktuation / optischer Randausgleich (Workaround)
Für optischen Randausgleich kannst du in kritischen Fällen
mit einem *negativen Einzug* arbeiten:

#let hang(body) = [
  #block(inset: (left: -6pt))[#body]
]

#hang["„" Das ist ein Beispiel, bei dem die Anführungszeichen optisch über den Rand stehen dürfen.]

== Mehrspaltiger Text als „Sidebar-Layout“
Zwei Spalten sind didaktisch sinnvoll, wenn du *Definitionen*, *Klassifikationen* oder *Differenzierungen* parallel führst.

#columns(2, gutter: 14pt)[
  *Spalte A: Konzept*
  - „Red Flag“ als Heuristik
  - Sensitivität vs. Spezifität
  - Bayes: Prätest → Posttest

  *Spalte B: Praxis*
  - Welche Frage ist am stärksten?
  - Welche Tests sind „Rule-out“?
  - Wie dokumentierst du sauber?
]

#tip[
  Die wichtigste Typo-Regel: *Mach es langweilig, bis es wichtig wird.*
  Akzente sind wie Medikamente: wirksam in richtiger Dosis, toxisch in Überdosis.
]


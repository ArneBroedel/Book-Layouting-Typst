// chapters/00-intro.typ
#import "../styles/theme.typ": palette
#import "../components/admonitions.typ": note, redflag
#import "../components/learning.typ": knowledge-check, learning-goals
#import "../components/figures.typ": fig
#import "../components/tables.typ": zebra-table

= Typst: The Missing Manual (Showcase)
Dieses Dokument ist ein *Design-Labor* für ein modernes Fachbuch über Clinical Reasoning, Differentialdiagnostik und Krankheitslehre.

#learning-goals(
  [Du verstehst, wie Typst als „Buch-Engine“ funktioniert.],
  [Du siehst, wie du wiederkehrende Elemente als Komponenten baust.],
  [Du bekommst Layout-Ideen, die medizin-didaktisch Sinn ergeben.],
)

#note[
  *Prinzip*: Trenne *Inhalt* (Kapitel, Absätze, Listen) von *Design* (Seitenraster, Farben, Typo).
  Typst ist dabei wie „LaTeX, aber mit einer UI im Kopf“: Du schreibst deklarativ, aber kannst Bausteine programmieren.
]

== Wie du dieses Showcase liest
- Alles ist *selbsterklärend*: Die Texte beschreiben die Technik, die direkt darunter demonstriert wird.
- Wenn du etwas kopierst: Nimm den ganzen Block inkl. `#let ...` oder `#show ...`.

== Ein erstes didaktisches Pattern: „klinisches Problem“ als Einstieg
#block(
  fill: palette.info.lighten(92%),
  radius: 10pt,
  inset: 14pt,
  stroke: (paint: palette.info, thickness: 1.2pt),
)[
  #text(weight: 800, size: 11pt, fill: palette.info)[↳ Fallvignette (Kurzform)]
  #v(10pt)
  #set par(leading: 1.3em)
  Eine 42-jährige Patientin berichtet über seit 6 Wochen zunehmende Schmerzen im LWS-Bereich.
  Morgens Steifigkeit (≈ 60 Minuten), Besserung durch Bewegung, keine klare Auslöserepisode.
  Keine bekannten Traumata. NSAID helfen „deutlich“.
]

#knowledge-check(
  title: "Mini-Check: Denkstart",
  [Welche Hypothesen entstehen sofort? (mechanisch vs. entzündlich vs. viszeral) ],
  [Welche 3 Fragen würdest du als nächstes stellen?],
  [Welche Red Flags musst du *sofort* prüfen?],
)

#redflag[
  „Night pain“ ist nicht automatisch eine Red Flag. Entscheidend sind Muster, Kontext und Begleitsymptome.
  Red Flags sind *Heuristiken*, keine Diagnosen.
]

== Tabelle: Mustererkennung kompakt
#zebra-table(
  columns: (1fr, 1fr, 1fr),
  [Merkmal],
  [Mechanisch],
  [Entzündlich],
  [Morgensteifigkeit],
  [kurz (< 30 min)],
  [lang (> 30–60 min)],
  [Belastung],
  [schlechter],
  [besser],
  [Ruhe],
  [besser],
  [schlechter],
  [NSAID],
  [variabel],
  [oft deutlich],
)

== Abbildungen: Vektor ist dein Freund
#fig(
  "../assets/images/placeholder.svg",
  caption: [SVG-Grafiken bleiben im Druck knackscharf und sind ideal für Schemata.],
) <fig:svg>
Im Text kannst du referenzieren: siehe @fig:svg.

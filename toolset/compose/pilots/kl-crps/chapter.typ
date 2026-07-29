// compose-chapter
// creative-first: true
// catalog_version: 0.1.0
// brief: domains/medical/briefs/kl-crps.brief.md
// feasibility: domains/medical/briefs/kl-crps.feasibility.md
// accept: domains/medical/briefs/kl-crps.accept.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-3-crps-sudeck.md
// content_revision: path-pin-2026-07-30 (exploration; no freeze)
// freeze: n/a (exploration)
// tools: bookkit, bookkit-didactics, custom kl-wave6/crps.typ
// graphic_decisions: domains/medical/briefs/kl-crps.graphics.md
// graphics: code winners only (free vision = provenance, not embed)
// brief_class: exploration
// polish: 2026-07-30 Sofortmaßnahmen E1–E4 (headings, meta, redundancy, breaks)

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/crps.typ": (
  us-crps,
  mimic-crps,
  cues-crps,
  ddx-crps,
)

#set document(
  title: "CRPS (Morbus Sudeck) — kl-kurz exploration prototype",
  author: "Book-Layouting-Typst studio",
)

#show: setup-typography()
#show: setup-pages()

// Align decorative opener "3" with bookkit L1 counter display (setup always
// prints counter(heading).display() for level-1). Next L1 becomes 3.
// Subsection titles have no manual "1."/"5." prefix (E1).
#counter(heading).update(2)

#chapter-opener(
  title: [CRPS (komplexes regionales Schmerzsyndrom / Morbus Sudeck)],
  lead: [Disproportionaler Extremitätenschmerz nach Trauma · V-3 · kl-kurz],
  number: 3,
)

// E2: no process meta banner in learner PDF (route/accept hold that info).

#callout(title: [Gefahr im Direktzugang], tone: "danger")[
  Hinter dem Label „Sudeck“ können Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall stecken – und unbehandeltes CRPS chronifiziert.
]

== Häufige Abkürzungen

#styled-table(
  columns: (28mm, 1fr),
  table.header(
    text(fill: white, weight: "bold")[Abkürzung],
    text(fill: white, weight: "bold")[Bedeutung],
  ),
  [CRPS], [Komplexes regionales Schmerzsyndrom (Complex Regional Pain Syndrome)],
  [TVT], [Tiefe Venenthrombose],
)

== Überblick

Das *komplexe regionale Schmerzsyndrom (CRPS, Morbus Sudeck)* ist ein regionales Schmerzsyndrom nach Trauma oder Operation einer Extremität. Charakteristisch sind Schmerzen, die deutlich stärker ausfallen als zur Verletzung passend, verbunden mit sensorischen, motorischen, vasomotorischen und trophischen Störungen – typischerweise distal der Läsion. Im Direktzugang ist die eigentliche Gefahr die Fehllabelung: Entweder werden lebensbedrohliche Differenzialdiagnosen (Infekt, Kompartmentsyndrom, arterielle Ischämie, Thrombose) als „CRPS“ abgetan, oder ein echtes CRPS wird als „normaler Heilungsschmerz“ oder reine Psychosomatik bagatellisiert. Die Budapest-Diagnose ist *ärztlich*. Aufgabe der HP Physio ist die Früherkennung, der Ausschluss von Notfall-Differenzialdiagnosen und die zeitnahe Facharztzuweisung. Sie führt keine eigenständige Systemtherapie durch.

#key-concept[
  Zwei Fehllabelungswege: Notfall-DDx unter „Sudeck“ verstecken *oder* echtes CRPS bagatellisieren. HP screent und triagiert — diagnostiziert und therapiert systemisch nicht.
]

== Entscheidungshilfe: CRPS (Morbus Sudeck)

=== Wann ist daran zu denken?

- *Risiken und Auslöser:* Fraktur, Operation, Distorsion oder Nervenverletzung an einer Extremität (Arm oder Bein).
- *Begleiterkrankungen / Kontext:* Die Patienten befinden sich in der postoperativen oder posttraumatischen Nachsorge. Vorbestehende Schmerzsyndrome oder psychische Belastungen erklären ein disproportionales Bild *nicht* und entbinden nicht von der körperlichen Abklärung.
- *Beginn, Trigger, Zeitverlauf:* Tage bis Wochen nach dem Trauma; Schmerz und vegetative/trophische Zeichen entwickeln sich oft schleichend und bleiben oder nehmen zu, statt wie erwartet abzuklingen.

=== Entstehung und Mechanismus

Nach Extremitätentrauma greifen entzündliche, nervale und autonome Mechanismen ineinander. Die Folge ist eine regionäre Fehlregulation mit anhaltendem, disproportionalem Schmerz, Allodynie/Hyperalgesie, Durchblutungs- und Temperaturstörungen sowie trophischen Veränderungen von Haut, Nägeln und Knochen. Unbehandelt droht Chronifizierung mit Funktionsverlust. Zugleich darf das CRPS-Label *nicht* darüber hinwegtäuschen, dass sich darunter ein Infekt, ein Kompartmentsyndrom oder ein Gefäßnotfall verbergen kann – diese müssen zuerst ausgeschlossen werden.

=== Klinische Hinweise

#cues-crps()

=== Verdacht, Abgrenzung und Warnsignale

#grid(
  columns: (1fr, 1fr),
  gutter: space.md,
  callout(title: [Erhärtet den Verdacht], tone: "info")[
    disproportionaler Extremitätenschmerz nach Trauma/OP plus vegetative und/oder trophische Zeichen (Temperatur-/Farbdifferenz, Schwellung, Schwitzen, Allodynie); distales, regionales Verteilungsmuster.
  ],
  callout(title: [Passt eher nicht], tone: "info")[
    reiner Heilungsschmerz mit klarer Zeit- und Belastungskorrelation und ohne autonome/trophische Zeichen; isoliertes mononeuropathisches Defizit ohne regionales vegetatives Bild – dennoch bei Unsicherheit ärztlich klären.
  ],
)

// E3: NM only once — in mimic-crps chip rail (not CAVE + chips).
#v(space.md)
#mimic-crps()

// E4: keep TIME stack together; start on fresh page when needed.
#pagebreak()

=== Handeln und Dringlichkeit

// E3: danger strip only at chapter open (us-crps show-danger: false).
#us-crps(show-danger: false)

=== Fall zur Selbstprüfung

#clinical-case(
  title: [Fall zur Selbstprüfung],
  anamnese: [
    45-jährige Patientin, vor sechs Wochen distale Radiusfraktur konservativ behandelt. Sie kommt zur „Nachbehandlung“. Die Hand schmerzt brennend, ist berührungsempfindlich, geschwollen und wärmer als die Gegenseite; die Haut glänzt, die Finger bewegen sich kaum. Fieber besteht nicht, Pulse sind tastbar, die Wunde ist reizlos. Die Patientin meint, sie sei „einfach überempfindlich“.
  ],
  body: [
    *Fragen:* (1) Was ist jetzt vorrangig? (2) Was ist kontraindiziert? (3) Was ist der nächste sichere Schritt?
  ],
)

// E4: DDx as unit, avoid mid-table orphan on thin last page.
#pagebreak()

== Differenzialdiagnose (DDx-Minimal)

#ddx-crps(show-title: false, show-footer: true)

== Quellen

1. AWMF. Leitlinie Reg.-Nr. 030-116 (CRPS / komplexes regionales Schmerzsyndrom – Kontext). URL: https://register.awmf.org/de/leitlinien/detail/030-116 (Abruf: 2026-07-15)
2. AWMF. S2k Leitlinie Venenthrombose und Lungenembolie (065-002). URL: https://register.awmf.org/de/leitlinien/detail/065-002 (Abruf: 2026-07-15)
3. National Institute for Health and Care Excellence (NICE). Venous thromboembolic diseases (NG158). URL: https://www.nice.org.uk/guidance/ng158 (Abruf: 2026-07-15)
4. AMBOSS. Complex Regional Pain Syndrome / CRPS (klinischer Kontext, sekundär). URL: https://next.amboss.com/de/ (Abruf: 2026-07-15)

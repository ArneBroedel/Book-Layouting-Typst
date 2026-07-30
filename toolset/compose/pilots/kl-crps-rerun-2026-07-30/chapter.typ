// compose-chapter
// creative-first: true
// catalog_version: 0.1.0
// brief: domains/medical/briefs/kl-crps-rerun-2026-07-30.brief.md
// feasibility: domains/medical/briefs/kl-crps-rerun-2026-07-30.feasibility.md
// accept: domains/medical/briefs/kl-crps-rerun-2026-07-30.accept.md
// content: /home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/chapter-v-3-crps-sudeck.md
// content_revision: welle-06-staging-2026-07-25
// graphic_decisions: domains/medical/briefs/kl-crps-rerun-2026-07-30.graphics.md
// tools: bookkit, bookkit-didactics, cetz, domains/medical/lib/typst/kl-wave6/crps-rerun.typ
// brief_class: exploration — production compose NOT authorized
// HARD BAN: no import of old pilot kl-crps / crps.typ / kl-crps assets

#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#import "/domains/medical/lib/typst/kl-wave6/crps-rerun.typ": *

#set document(
  title: "CRPS (Morbus Sudeck) — Exploration Pilot",
  author: "Kursbuch · kl-crps-rerun-2026-07-30",
)

#show: setup-typography()
#show: setup-pages()

#chapter-opener(
  title: [CRPS (komplexes regionales Schmerzsyndrom / Morbus Sudeck)],
  lead: [Disproportionaler Extremitätenschmerz nach Trauma — Früherkennung, Notfall-DDx und zeitnahe Facharztzuweisung.],
  number: 3,
)

#cave[
  Hinter dem Label „Sudeck“ können Infekt, Kompartmentsyndrom oder arterieller Gefäßnotfall stecken — und unbehandeltes CRPS chronifiziert.
]

== Big Picture

#bp-crps-rerun()

#memo[
  Die Budapest-Diagnose ist *ärztlich*. Aufgabe der HP Physio ist Früherkennung, Ausschluss von Notfall-Differenzialdiagnosen und zeitnahe Facharztzuweisung — keine eigenständige Systemtherapie.
]

== Wann ist daran zu denken?

#enabling-crps-rerun()

== Entstehung und Mechanismus

#mechanism-crps-rerun()

== Klinische Hinweise

#cues-crps-rerun()

#v(6pt)
#regional-cues-crps-rerun()

== Verdacht, Abgrenzung und Warnsignale

#discrimination-crps-rerun()

#v(8pt)
#mimic-peel-crps-rerun()

== Handeln und Dringlichkeit

#us-crps-rerun()

== Fall zur Selbstprüfung

#transfer-crps-rerun()

== DDx-Minimal

#ddx-crps-rerun()

#v(8pt)
#block(
  width: 100%,
  inset: 7pt,
  radius: 2pt,
  fill: palette.bg-subtle,
  stroke: 0.4pt + palette.border-light,
)[
  #set text(size: 8pt, fill: palette.text-muted)
  Exploration pilot `kl-crps-rerun-2026-07-30` · nicht produktionsfreigegeben · Parent-System V-3 · Quellen: AWMF 030-116 (Kontext), AWMF 065-002, NICE NG158 (siehe Content-SoT).
]

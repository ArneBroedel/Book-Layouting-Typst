# Spec: Berufs- und Rechtskunde (Legal-Text Showcase)

## Objective

Die Darstellung **juristischer Inhalte** in einem medizinischen Fachbuch erschließen und vorführen:
Gesetzestexte/Paragraphen/Artikel wörtlich und korrekt zitiert, Normstruktur (Absatz/Satz/Nummer/
Buchstabe) sichtbar, dazu Rechtsprechung, Legaldefinitionen, Gutachtenstil, Normenhierarchie,
Randnummern-Kommentar und Abkürzungsverzeichnis — mit realistischem medizinischem Berufsrecht-Bezug
(Schweigepflicht §203 StGB, Behandlungsvertrag §§630a ff. BGB, Art. 12 GG, IfSG-Meldepflichten).

## Scope (in)

- **Neues Komponenten-Modul** `src/components/legal.typ` (token-gebunden über `theme.legal`):
  `norm`/`paragraf` (Inline-Zitat), `gesetzeskasten` + `absatz`/`nummer`/`buchstabe`,
  `rechtsprechung`, `legaldefinition`, `pruefungsschema`/`gutachten`, `tatbestand-rechtsfolge`,
  `normenhierarchie`, `randnummer` (+ `randnummer-reset`), `abkuerzungen`.
- **Theme-Token** `legal` (norm/case/definition/scheme/practice — Label + Farbe) in `theme.typ`.
- **Showcase-Kapitel** `src/chapters/25-rechtskunde.typ` mit `index[…]`-Markern; eingebunden als
  **Teil VIII** in `src/main.typ`.

## Scope (out)

- **Nativ statt Paket** (Nutzer-Philosophie des Repos): Pakete (`rich-counters`, `theorion`,
  `great-theorems`, `glossarium`/`abbr`, `citrus`, `clean-hwr`) werden im Kapitel *erwähnt*, aber nicht
  eingebunden — token-gebunden und konfliktfrei wie die didaktische Box-Familie.
- Keine echte Bibliographie/CSL-Einbindung (OSCOLA via `.csl` nur erwähnt).

## Acceptance

- `typst compile … src/main.typ dist/book.pdf` und `--pdf-standard ua-1` liefern beide EXIT 0.
- Kapitel 25 erscheint als Teil VIII; alle Bausteine korrekt (hängende Einzüge der Norm-Gliederung,
  Inline-Zitate ohne Umbruch, Normenhierarchie als geschlossene Pyramide, Randnummern im Steg).
- Juristische Inhalte fachlich korrekt und als Auszug gekennzeichnet.

## Risiken / Gotchas

- Inline-Normzitat darf nicht umbrechen → `box` + `sym.space.nobreak`.
- Buchstaben-Paragraphen (§ 630e) sind EIN Bezeichner → `p: "630e"` (String).
- Aufgebaute Mehrteil-Figuren (Pyramide) → `breakable: false`.

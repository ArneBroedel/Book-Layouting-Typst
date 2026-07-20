# Spec: Plan-Driven Layout — Experte 3 (technische Umsetzung)

## Objective

Presentation Plans **deterministisch** in bookkit-basiertes Typst und reproduzierbare PDFs
übersetzen — als klar getrennter **Layout-/Composition-Experte**, der **keine** didaktischen
Form-Entscheidungen neu trifft und **keine** Fachinhalte umschreibt.

> Experte 3 entscheidet: *wie erzeuge ich Form X korrekt und robust in Typst?*  
> Nicht: *soll das eine Tabelle oder eine Checkliste sein?* (das steht im Plan)

## Background

- bookkit + CLI + `typst-writer` / `bookkit`-Skill existieren (Toolset-MVP).
- `pilots/kursbuch-welle-03/convert_md_to_typ.py` ist der **Legacy-Heuristik-Pfad** (Baseline).
- Dieser Track ersetzt den Default-Pfad durch **Plan → Assembly**, optional mit gezieltem
  Content-Pull nur für referenzierte Source-Anker.

## Scope (in)

- **Assembler v0:** liest validen Presentation Plan + (read-only) Content-Quelle; erzeugt `.typ`
  Module und/oder ein gebundenes `main.typ`; Build via `bookkit` / repro flags.
- **Mapping-Engine:** form-catalog Mapping anwenden; unbekannte/planned Forms → harter Fehler oder
  dokumentierter Skip mit `layout-gap`.
- **Skill-Erweiterung:** `bookkit` und/oder schlanker `plan-assembly`-Skill: Assembly-Order,
  Plan lesen, Anti-Patterns (kein Didaktik-Erfinden, kein Content-Edit).
- **QA-Gate `layout-ok`:** compile, PDF size, optionale Struktur (`typst query` / Form-Counts vs Plan),
  PNG-Stichprobe-Hook.
- **Baseline-Vergleich-Unterstützung:** alten Converter-Output nicht löschen bis Umbrella E2E;
  Flag oder Ordner `legacy/` vs `generated/`.
- **Lücken → bookkit:** wenn Katalog `planned` und Pilot es braucht: kleine, gezielte Komponenten
  (z. B. `protocol-steps`), nicht Facetten-Explosion.

## Scope (out)

- Presentation Plans erstellen oder Genre-Didaktik (→ didactic-media).
- Form-IDs definieren (→ form-catalog).
- Medizinische Korrektheit, Human-Review, Promote.
- Prepress/PDF-X (außer Build bleibt prepress-ready flags-kompatibel).
- Vollständige WYSIWYG-Garantien; v0 = robuste Composition nach Plan.

## Alignment

| Track | Beziehung |
|---|---|
| [`form-catalog`](../form-catalog/) | Mapping-Quelle |
| [`didactic-media`](../didactic-media/) | Plan-Schema + Gold-Pläne als Input |
| [`presentation-pipeline`](../presentation-pipeline/) | E2E / Harmony |
| `_archive/typst-toolset` | Runtime |

### Was dieser Experte **niemals** tut

- `form` wählen oder Plan „verbessern“, weil es „schöner“ wäre  
- Critical Claims / Prosa fachlich ändern  
- Forms nutzen, die nicht im Katalog mapped sind  
- Heuristik „Keyword 112 → cave“ als Primary Path (Legacy only)  

### Was dieser Experte **tut**

- Plan validieren (oder Validator aus didactic-media aufrufen)  
- Pro Block: Katalog-API aufrufen, Content-Anker auflösen  
- chapter-opener / parts / page setup laut bookkit-Assembly-Order  
- Repro-Build, doctor, Fehler diagnostizieren (Typst)  
- `layout-gap` schreiben, wenn API/Param fehlt  

## Acceptance

1. Assembler erzeugt aus **Gold-Plan III-5** (oder äquivalent) ein grünes PDF ohne manuelles
   Typst-Feintuning der Didaktik-Struktur.
2. Dasselbe für mind. ein zweites Kapitel (III-2).
3. Unbekannte Form im Plan → **nicht** still ignorieren (Fail oder explizite gap-Liste + non-zero
   policy dokumentiert).
4. Durable Test: Plan-Fixture → compile → PDF > 0 (in `toolset/tests` oder pilots).
5. Skill-Text: „Didaktik kommt aus dem Plan“; Abgrenzung zu `didactic-media`.
6. Legacy-Converter als non-default dokumentiert; Plan-Pfad ist empfohlen für Pipeline-Pilots.
7. Keine Content-SoT-Duplikation: regenerierbare Outputs klar markiert.

## Risks

- Source-Anker unzuverlässig (Headings ändern sich) → stabile Anker-Strategie (IDs im MD später;
  v0: heading match + manuelle excerpt fields in Gold-Plänen).
- Assembler wird zweiter Converter mit Hidden Heuristics → Code-Review-Regel: nur Plan-getrieben.
- Performance/Komplexität → v0 darf Templates pro Genre haben, solange vom Plan gesteuert.

## Relationship to existing pilot code

| Pfad | Zukunft |
|---|---|
| `pilots/kursbuch-welle-03/convert_md_to_typ.py` | Baseline / legacy |
| `pilots/kursbuch-welle-03/chapters/*.typ` | bis E2E: Vergleich; danach generate-from-plan |
| `packages/bookkit*` | unverändert als API-Ziel; nur gezielte Ergänzungen |

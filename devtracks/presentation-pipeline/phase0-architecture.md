# Phase 0 — Architektur & Zusammenarbeitsverträge

Status: **offen** (Spec enthält den Entwurf; hier operationalisieren)

## Deliverables

- [ ] **Schichten-Matrix final:** Input, Output, Owner-Skill, verbotene Aktionen (Tabelle in spec
      spiegeln / bei Bedarf schärfen).
- [ ] **Artefakt-Pfade (Konvention):**
  - Content: extern (Kursbuch) oder `pilots/.../content` nur als Kopie-Hinweis
  - Plans: z. B. `pilots/<name>/plans/<chapter>.plan.yaml`
  - Generated typst: `pilots/<name>/generated/` oder `chapters/` mit Header „generated from plan“
  - Reports: `pilots/<name>/reports/`
- [ ] **Gate-Definitionen (v0, testbar):**
  - `content-ready`: Meta vorhanden, Kapiteldatei lesbar (kein Fach-Audit hier)
  - `plan-ok`: YAML valid gegen Schema; nur bekannte `form`-IDs; `genre` gesetzt
  - `layout-ok`: Compile exit 0, PDF > 0, optionale Strukturchecks
- [ ] **Skill-Schnitt (Namen festlegen):**
  - Didaktik: z. B. `didactic-media` / `presentation-planner`
  - Layout: bestehend `bookkit` + ggf. Abschnitt/Skill `plan-assembly`
  - Explizit: `typst-writer` = Technik, nicht Didaktik-Orchestrierung
- [ ] **Validator-Stub spezifizieren** (Implementierung in Child-Tracks): Plan lint CLI oder Script.

## Exit

Child-Tracks dürfen implementieren, sobald Pfade + Gate-Namen + Skill-Namen stabil sind (können als
v0 im Umbrella-spec stehen — dann Checkboxen hier abhaken und auf spec verweisen).

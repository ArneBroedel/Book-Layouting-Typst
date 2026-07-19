# Spec: Skill-Wiederverwendungs-Pilot

## Objective

Den **zentralen Projektzweck beweisen**: dass die destillierten Skills (`typst-writer`,
`typst-extension`, `pinit-workflow`) und die Guides ein *neues* Projekt messbar
beschleunigen. Dafür entsteht ein **kleines, eigenständiges Artefakt zu einem anderen Thema**,
gebaut allein auf Basis der Skills/Guides und der **Toolset-Runtime** — ohne das Buch zu erweitern.

Das ist der Lackmustest für die Meta-Werkstatt: Wenn die Skills gut sind, kommt ein frisches Artefakt
schnell und sauber zustande; wo es hakt, deckt der Pilot Lücken in den Skills auf, die zurückfließen.

## Alignment: parent track `typst-toolset`

Dieser Track ist das **Exit-Kriterium von Phase 2** des Umsetzungs-Tracks
[`typst-toolset`](../typst-toolset/) (Skill-Pack + Starter + generalisierbare Runtime).

- **Nicht** mehr vor der Package-Extraktion „nur `src/components` ad-hoc“ als Dauerzustand planen.
- Sobald `typst-toolset` Phase 1 (Foundation-Package) steht: Pilot **muss** Package + Skill-Pack +
  Starter-Muster nutzen (siehe `typst-toolset/phase2-skills-starter.md`).
- Bis Phase 1 fertig ist, kann Phase 0 dieses Pilots (Thema/Form wählen) parallel laufen.
- Bei erfolgreicher Toolset-Phase-2-Abnahme: Reuse-Report hier oder verlinkt ablegen; Track harvesten
  und mit Phase 2 archivieren bzw. gemeinsam schließen.

## Scope (in)

- **Ein neues, kleines Artefakt** (~6–8 Seiten), bewusst aus einer *anderen* Domäne als das medizinische
  Buch — z. B. ein technisches **Datenblatt/One-Pager-Report** oder eine **kurze wissenschaftliche
  Kurzmitteilung**. Eigenes Mini-Repo-Verzeichnis (`pilots/<name>/`) oder eigenständige `.typ` unter
  `test/`/`pilots/`, NICHT in `src/`.
- **Bausteine (Soll-Zustand nach Toolset Phase 1):** Skills als Leitfaden, **Foundation-Package**
  (+ optional Starter), Theme-Override / eigene Token-Palette als Beweis der Konfigurierbarkeit,
  reproduzierbare Build-Flags. Fallback nur wenn Package noch nicht existiert: vorhandene
  `components/`/`theme.typ` — dann im Report als „pre-package baseline“ kennzeichnen.
- **Reuse-Messung:** Welche Skills/Regeln haben getriggert? Was ließ sich 1:1 wiederverwenden? Wo musste
  improvisiert werden (= Skill-Lücke)? Zeit-/Iterationsaufwand grob protokollieren.
- **Rückfluss:** identifizierte Lücken als konkrete Skill-Verbesserungen formulieren (Harvest in
  `typst-writer`/`typst-extension` und ggf. package-spezifischem Skill).

## Scope (out)

- Keine Erweiterung des Hauptbuchs (`src/main.typ` bleibt unberührt).
- Kein neues großes Werk — bewusst klein, in 1–2 Sitzungen machbar.
- Keine eigenständige Produkt-Infrastruktur **außerhalb** von `typst-toolset` (Package/Starter/CLI
  entstehen im Parent-Track; dieser Track *nutzt* sie).

## Acceptance

- Das Pilot-Artefakt kompiliert reproduzierbar (`--ignore-system-fonts --font-path fonts`).
- Ein kurzer **Reuse-Report**: genutzte Skills/Komponenten/Package-APIs, 1:1-Wiederverwendung vs.
  Improvisation, gefundene Skill-Lücken, Aufwand; Kennzeichnung pre- vs. post-package.
- Mindestens eine konkrete, umgesetzte Skill-Verbesserung aus den gefundenen Lücken (oder begründet:
  „keine Lücken").
- Deckt Toolset Phase 1+: Pilot baut **ohne** Klon des vollen Studio-Showcases.

## Risiken
- Gefahr der Themen-Nähe → bewusst eine andere Domäne wählen, damit der Reuse-Test aussagekräftig ist.
- Versuchung, das Buch-Design zu kopieren statt die Skills zu nutzen → Disziplin: erst Skill lesen, dann bauen.
- Pilot zu früh (vor Package) misst „Repo-internen Reuse“ statt Produkt-Reuse → im Report klar markieren.

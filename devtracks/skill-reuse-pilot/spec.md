# Spec: Skill-Wiederverwendungs-Pilot

## Objective

Den **zentralen Projektzweck beweisen**: dass die destillierten Skills (`typst-writer`,
`typst-extension`, `pinit-workflow`) und die Guides ein *neues* Projekt messbar
beschleunigen. Dafür entsteht ein **kleines, eigenständiges Artefakt zu einem anderen Thema**,
gebaut allein auf Basis der Skills/Guides/Komponenten — ohne das Buch zu erweitern.

Das ist der Lackmustest für die Meta-Werkstatt: Wenn die Skills gut sind, kommt ein frisches Artefakt
schnell und sauber zustande; wo es hakt, deckt der Pilot Lücken in den Skills auf, die zurückfließen.

## Scope (in)

- **Ein neues, kleines Artefakt** (~6–8 Seiten), bewusst aus einer *anderen* Domäne als das medizinische
  Buch — z. B. ein technisches **Datenblatt/One-Pager-Report** oder eine **kurze wissenschaftliche
  Kurzmitteilung**. Eigenes Mini-Repo-Verzeichnis (`pilots/<name>/`) oder eigenständige `.typ` unter
  `test/`/`pilots/`, NICHT in `src/`.
- **Nur bestehende Bausteine nutzen:** Skills als Leitfaden, vorhandene `components/` und `theme.typ`
  (ggf. mit eigener Token-Palette als Beweis der Konfigurierbarkeit), reproduzierbare Build-Flags.
- **Reuse-Messung:** Welche Skills/Regeln haben getriggert? Was ließ sich 1:1 wiederverwenden? Wo musste
  improvisiert werden (= Skill-Lücke)? Zeit-/Iterationsaufwand grob protokollieren.
- **Rückfluss:** identifizierte Lücken als konkrete Skill-Verbesserungen formulieren (Harvest in
  `typst-writer`/`typst-extension`).

## Scope (out)

- Keine Erweiterung des Hauptbuchs (`src/main.typ` bleibt unberührt).
- Kein neues großes Werk — bewusst klein, in 1–2 Sitzungen machbar.
- Keine neue Infrastruktur/Pakete „nur für den Pilot".

## Acceptance

- Das Pilot-Artefakt kompiliert reproduzierbar (`--ignore-system-fonts --font-path fonts`).
- Ein kurzer **Reuse-Report**: genutzte Skills/Komponenten, 1:1-Wiederverwendung vs. Improvisation,
  gefundene Skill-Lücken, Aufwand.
- Mindestens eine konkrete, umgesetzte Skill-Verbesserung aus den gefundenen Lücken (oder begründet:
  „keine Lücken").

## Risiken
- Gefahr der Themen-Nähe → bewusst eine andere Domäne wählen, damit der Reuse-Test aussagekräftig ist.
- Versuchung, das Buch-Design zu kopieren statt die Skills zu nutzen → Disziplin: erst Skill lesen, dann bauen.

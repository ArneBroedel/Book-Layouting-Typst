# Phase 4 — E2E Harmony & Abnahme

Status: **offen** · nach Child-Tracks v0

## Ziel

Beweisen, dass die drei Schichten **zusammen** bessere didaktische PDFs liefern als der
heuristische Converter — ohne Schichten zu vermischen.

## Tasks

- [ ] Pilot-Set: mind. **III-5** und **III-2** (Notfallkarten) aus Kursbuch-Staging (read-only).
- [ ] Je Kapitel: `presentation-plan` (Didaktik) → Assembly (Layout) → PDF.
- [ ] Vergleichsdokument: Converter-Baseline vs. Plan-Pipeline (Form-Counts, Seite-1-Intent,
      qualitative Notizen + PNG Stichprobe).
- [ ] Automatische Checks: Plan-Validator (nur Katalog-Forms); optional „min. N distinct forms“.
- [ ] Trennungsaudit: Stichprobe Plan-Datei ohne `#`/Typst; Generated typst ohne Claim-Rewrite.
- [ ] Governance: `AGENTS.md` / `KNOWLEDGE-MAP` Pipeline-Schichten; README pilots aktualisieren.
- [ ] Deprecation-Note: reiner MD-Heuristik-Converter = legacy / nur Fallback.
- [ ] Harvest-Orchestrierung: Footer in Child-Plans + diesem Plan; Archive-Reihenfolge dokumentieren.

## Exit criteria

Umbrella-Acceptance 3–6 aus spec.md erfüllt; Report unter
`pilots/.../reports/e2e-harmony-….md` oder Track-`reports/`.

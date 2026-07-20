# Kursbuch pilot compose — Welle 2026-07-welle-03-final-10

Production-compose **consumer** of platform **A** (`packages/bookkit` +
`bookkit-didactics`) after Media Brief → Feasibility → Accept. Clinical content
remains **external** (Produkt **C** — Kursbuch staging); this tree holds layout only.

**Catalog pin:** `0.1.0` (`toolset/form-catalog/VERSION`).  
**Consumer guide:** [`docs/CONSUMER.md`](../../docs/CONSUMER.md).  
**brief_class:** exploration (`format-ok`, Human hold — no freeze production).

## Content source (read-only, Produkt C)

```
/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/
```

Do **not** copy content SoT into this repo.

## Chapters (10)

| Chapter | Genre (layout) | Brief chain | Compose |
|---|---|---|---|
| **I-4** IfSG | lerntext + legal gatekeeper | `domains/medical/briefs/i4-ifsg.*` | `chapters/i4.typ` |
| **II-1** D-RISC | lerntext / methodik | `domains/medical/briefs/ii1-drei-achsen-drisc.*` | `chapters/ii1.typ` |
| **III-2** BLS/AED | notfall-karte | `domains/medical/briefs/iii2-bls-aed.*` | `chapters/iii2.typ` |
| **III-5** Cauda-Karte | notfall-karte | `domains/medical/briefs/iii5-cauda-notfallkarte.*` | `chapters/iii5.typ` |
| **IV-2** Rücken/Neuro | leitsymptom / decision | `domains/medical/briefs/iv2-rueckenschmerz-neuro.*` | `chapters/iv2.typ` |
| **IV-4** Heißes Gelenk | leitsymptom / decision | `domains/medical/briefs/iv4-heisses-gelenk.*` | `chapters/iv4.typ` |
| **V-Cauda** | kl-voll / fallbasiert | `domains/medical/briefs/v-cauda-equina.*` | `chapters/v-cauda.typ` |
| **V-Sept** | kl-kurz | `domains/medical/briefs/v-sept-arthritis.*` | `chapters/v-sept.typ` |
| **VI-1** Geriatrie | population | `domains/medical/briefs/vi1-geriatrie.*` | `chapters/vi1.typ` |
| **VII-1** Exam-Cluster | integration | `domains/medical/briefs/vii1-exam-cluster.*` | `chapters/vii1.typ` |

## Media design principles applied

| Genre | Presentation priority |
|---|---|
| notfall-karte | F1 gatekeeper → recognition → triage → protocol-steps → short DDx → quiet links |
| leitsymptom | Early cave + split urgency; matrix + flow + R+I+S→C; claims after action |
| methodik | Key concept + objectives; operational tables; protocol Pflichtsequenz; cases |
| recht | Legal draft-cave; three layers; operational table; protocol Praxisbox; open gaps |
| kl-voll | Case first → gatekeeper → illness script → RF → DDx → D-RISC |
| kl-kurz | Gatekeeper thresholds → compact script → RF → KI → D-RISC |
| population | Vulnerability gatekeeper; split RF table; no score invention |
| integration | Spielregeln; 10 stations action-loud; checklists; no new claims |

## Build

From studio root:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  pilots/kursbuch-welle-03-compose/main.typ \
  dist/pilots/welle-03-compose-full.pdf
```

Validate one chapter (example notfall-karte):

```bash
python3 toolset/compose/scripts/run_validate.py \
  --typ pilots/kursbuch-welle-03-compose/chapters/iii5.typ \
  --content /path/to/Kursbuch5/.../chapter-iii5-cauda-notfallkarte.md \
  --catalog toolset/form-catalog/core/forms.yaml \
  --accept domains/medical/briefs/iii5-cauda-notfallkarte.accept.md \
  --genre-minima domains/medical/recipes/notfall-karte.minima.yaml \
  --root . --font-path fonts
```

## Product boundary

See `devtracks/PRODUCT-BOUNDARIES.md`. Dogfood only — not a promote into Kursbuch `book/`.

---

## v2 Creative-First (2026-07-20)

**Policy:** `toolset/compose/CREATIVE-COMPOSE.md`  
**Visual helpers:** `lib/visual.typ` (pathways, urgency-lanes, Fletcher decision diagrams, station cards, …)

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  pilots/kursbuch-welle-03-compose/main.typ \
  dist/pilots/welle-03-compose-v2-creative.pdf
```

| v1 (whitelist boxes) | v2 (creative-first) |
|---|---|
| `dist/pilots/welle-03-compose-full.pdf` | `dist/pilots/welle-03-compose-v2-creative.pdf` |
| protocol-steps + styled-table monotony | process-pathway, urgency-lanes, decision-diagram (Fletcher), vertical-flow, station-card |

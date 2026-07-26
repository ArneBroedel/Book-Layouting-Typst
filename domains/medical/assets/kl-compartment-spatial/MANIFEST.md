# Assets — kl-compartment-spatial

| file | role | verdict |
|---|---|---|
| vision-free-01.png | Typst after 429 | **FAIL** hexagon anatomy |
| vision-refined-01.png | Typst chrome polish | **FAIL** same figure |
| vision-free-02.png | Typst after 429 (retry) | **FAIL** — invents **>30 mmHg** |
| vision-free-gemini-01.png | Gemini multi-panel poster | **demoted** — too many vignettes / KI-Artefakte (Human) |
| vision-free-gemini-focus-01.png | Gemini single-panel “anatomy-ish” cut | better focus, but still **too anatomically suggestive** for unsupervised textbook (Human) |
| vision-free-gemini-principle-01.png | Gemini pure principle ring | good abstract; no leg topology |
| vision-free-gemini-schematic-correct-01.png | Gemini schematic-first + 4 Fächer | good topology; EN labels mixed |
| vision-free-gemini-schematic-correct-02-de.png | Gemini 4-Fach-Schnitt DE | **demoted** — zu viele Struktur-Labels, CT-Schnitt-Look angreifbar (Human) |
| vision-free-gemini-essential-01.png | Gemini | demoted — UI/Photoshop-Rahmen |
| **vision-free-gemini-essential-02.png** | Gemini outer shin + pressure zone | preferred free: no cut, no bone names |
| **compartment-essential.pdf** | Typst principle + grobe Silhouette | default code path |
| generate_refined.typ | hexagon source | provenance only |
| **spatial-compartment-principle()** | Typst pure principle | default when no body topology needed |
| **spatial-compartment-cetz()** | Typst comic-schematic cut | pin-safe DE, topology controlled · spike `compartment-schematic.pdf` |


Post-mortem: `domains/medical/briefs/_wave5/ambition-raster-postmortem.md`

# Wave-03 Compose v2 — Creative-First (2026-07-20)

## Policy

`toolset/compose/CREATIVE-COMPOSE.md`  
Ideal → full toolkit (bookkit + fletcher 0.5.8 + cetz 0.5.2 + `lib/visual.typ`) → prefer stable only when best → fallback documented.

## Output

| Artifact | Path |
|---|---|
| **Full PDF** | `dist/pilots/welle-03-compose-v2-creative.pdf` |
| Visual library | `pilots/kursbuch-welle-03-compose/lib/visual.typ` |
| Spike | `dist/spikes/visual-lib-spike.pdf` |
| Chapters | `pilots/kursbuch-welle-03-compose/chapters/*.typ` |

## Visual patterns used

| Pattern | Helper | Where |
|---|---|---|
| Linear action path | `process-pathway` | III-5, III-2, IV-2, IV-4, II-1, V-*, I-4 |
| Urgency triage lanes | `urgency-lanes` | III-5, III-2, IV-2, IV-4, V-*, VI-1, I-4 |
| Branching algorithm | `decision-diagram` (Fletcher) | III-5, III-2, IV-2, IV-4, II-1, V-*, I-4 |
| Weighted protocol | `vertical-flow` | III-5, III-2, IV-*, I-4, II-1 |
| Recognition chips | `cue-cluster` | III-5, III-2, VI-1, V-Cauda |
| Contrast pairs | `contrast-pairs` | III-5, III-2, IV-*, V-*, VI-1 |
| Exam stations | `station-card` | VII-1 (×10) |
| Legal layers | `layer-stack` | I-4 |

## Content

Read-only:  
`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/`

Claims copy-through; exploration (no freeze); I-4 ≠ Jurist; no promote.

## Build

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  pilots/kursbuch-welle-03-compose/main.typ \
  dist/pilots/welle-03-compose-v2-creative.pdf
```

# Wave-03 full compose report — 2026-07-20

## Scope

| Item | Value |
|---|---|
| Content | Kursbuch staging `2026-07-welle-03-final-10` (10 chapters, format-ok) |
| Pipeline | Media Brief → Feasibility → Accept → Compose → PDF |
| Catalog | `0.1.0` |
| brief_class | **exploration** (Human hold / no freeze) |
| Full PDF | `dist/pilots/welle-03-compose-full.pdf` (**81 pages**, ~1.2 MB) |

## Chapter status

| ID | Genre (layout) | Brief chain | `.typ` | Standalone compile |
|---|---|---|---|---|
| I-4 | recht / lerntext | `i4-ifsg.*` | `i4.typ` | OK |
| II-1 | methodik / lerntext | `ii1-drei-achsen-drisc.*` | `ii1.typ` | OK |
| III-2 | notfall-karte | `iii2-bls-aed.*` | `iii2.typ` | OK (prior E2E) |
| III-5 | notfall-karte | `iii5-cauda-notfallkarte.*` | `iii5.typ` | OK + **validate PASS** (minima + claims) |
| IV-2 | leitsymptom | `iv2-rueckenschmerz-neuro.*` | `iv2.typ` | OK |
| IV-4 | leitsymptom | `iv4-heisses-gelenk.*` | `iv4.typ` | OK |
| V-Cauda | kl-voll / fallbasiert | `v-cauda-equina.*` | `v-cauda.typ` | OK |
| V-Sept | kl-kurz | `v-sept-arthritis.*` | `v-sept.typ` | OK |
| VI-1 | population | `vi1-geriatrie.*` | `vi1.typ` | OK |
| VII-1 | integration | `vii1-exam-cluster.*` | `vii1.typ` | OK |

## Design principles applied (Media)

1. **Unit → hypothesis** before form mapping (design-reasoning harvest).
2. **Loudness = urgency** (gatekeeper / cave early; sources trailing).
3. **Order-critical steps** as `protocol-steps` where applicable.
4. **Split thresholds** copy-through (112 vs ED vs gleichtags) — never mixed answers.
5. **No invented clinical numbers** (no Restharn-ml, no TUG cut-offs, no §8 HP status).
6. **Claims** as trailing audit appendix only.

## Validate sample

```text
iii5: catalog PASS · whitelist PASS · minima PASS · claims PASS · compile PASS · accept PASS
```

## Explicit non-claims

- Not Human-frozen production quality.
- I-4 ≠ Jurist-Freigabe.
- No promote to Kursbuch `book/`.
- Exploration Accept authorizes **pilot dogfood** only.

# Canonical asset policy (Produkt B)

**Decided:** 2026-07-29 — D1 quarantine + purge intermediate visions.  
**Provenance tag:** `archive/assets-pre-purge-2026-07-29` (restore intermediates from this tag if needed).

## Per-unit keep set

| Keep | Role |
|---|---|
| `MANIFEST.md` | Status + license/alt notes |
| SVG / vector preferred | Production-friendly |
| At most **1** `vision-free-*.png` | Free-vision reference |
| At most **1** `vision-refined-*.png` or accepted raster | After claim audit PASS |
| Optional: 1–2 “sweetspot” finals | Only if documented as canonical in MANIFEST |

## Do not commit

- Intermediate backend variants (`*-gemini-essential-*`, `*-focus-*`, `*-principle-*`, unrefined nanobanana, …)
- Spike compile PDFs (`dist/`, spikes `*.pdf`)
- Eval workspace PDFs

## Restore purged file

```bash
git show archive/assets-pre-purge-2026-07-29:domains/medical/assets/<slug>/<file> > /tmp/restore.png
# review; re-add only with MANIFEST status=accepted
```

## Gold asset slugs (aligned with briefs)

`iii2-bls-aed`, `iii5-cauda-notfallkarte`, `iv2-rueckenschmerz-neuro`, `iv4-heisses-gelenk`,  
`kl-melanom-abcde`, `kl-us-d-urgency`, `kl-stroke-fast`, `kl-compartment-spatial`,  
optional: `ii1-drei-achsen-drisc`, `kl-ces-saddle`.

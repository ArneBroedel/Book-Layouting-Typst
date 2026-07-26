# Playbook 06 — AI refine & raster end product (G3 R3)

## B2 refine

```bash
./scripts/graphics-refine-agy.sh \
  --vision domains/medical/assets/<slug>/vision-free-01.png \
  --brief domains/medical/briefs/<slug>.vision.md \
  --notes "Surgical: … claim fixes, German only, palette …" \
  --out domains/medical/assets/<slug>/vision-refined-01.png
```

Load standards: [`../references/book-visual-standards.md`](../references/book-visual-standards.md)

Cap: **2** refine gens. Re-run claim audit after refine (**labels + illustration-semantics**).

### Surgical icon refine (preferred after Human icon review)

When composition is good but 1–2 tiles teach the wrong criterion:

1. Write **tile-scoped** `--notes` (what is wrong · what must be drawn · what must stay).  
2. Prefer refine over full re-free-gen (preserves accepted layout).  
3. If pass 1 fixes only half (e.g. B OK, D still dishonest scale) → second refine on **remaining tile only**.  
4. Promote winner (`vision-refined-0N.png`); keep free-01 as provenance in MANIFEST.

**Gold pattern:** Melanom ABCDE free-01 → refined-01 (B soft edge) → refined-02 (D scale honesty).

## Raster as **end product** (allowed, gated)

Media may Accept `graphic_mode: asset` with refined/free PNG **only if all gates pass**:

| Gate | Requirement |
|---|---|
| Claim audit | **PASS** (post-refine) |
| Form Spec Must-see | met |
| DPI | ≥300 @ print width **or** documented `screen-only` / pilot |
| MANIFEST | path, source, license, alt, print_ok |
| Decision Note | `realize_path: accept-asset` + rationale |
| Media Accept | winner = asset explicit |
| H-Gfx | if medical depiction risk |

If quality ≈ equal to code: **prefer code/hybrid** for maintainability.

## NEVER

- Ship FAIL-audit free PNG as production  
- Silent “print OK” without DPI check (`scripts/check-image-dpi.py`)

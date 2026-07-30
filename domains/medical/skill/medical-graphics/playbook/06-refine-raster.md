# Playbook 06 — AI refine & raster end product (G3 R3)

## B2 refine

Use when free vision **composition** is worth keeping (harvest cues already listed) and labels/icons need surgical fix — **not** as a way to skip harvest/recreate.

```bash
./scripts/bookkit graphics refine \
  --vision domains/medical/assets/<slug>/vision-free-01.png \
  --brief domains/medical/briefs/<slug>.vision.md \
  --notes "Surgical: … claim fixes, German only, palette …" \
  --out domains/medical/assets/<slug>/vision-refined-01.png

# Legacy still valid:
# ./scripts/graphics-refine-agy.sh …
```

Load standards: [`../references/book-visual-standards.md`](../references/book-visual-standards.md)

Cap: **2** refine gens. Re-run claim audit after refine (**labels + illustration-semantics**).  
After DRIFT: pick **refine** *or* **recreate-with-harvest** as primary (caps); do not thrash both.

### Surgical icon refine (preferred after Human icon review)

When composition is good but 1–2 tiles teach the wrong criterion:

1. Write **tile-scoped** `--notes` (what is wrong · what must be drawn · what must stay).  
2. Prefer refine over full re-free-gen (preserves accepted layout **and** harvest geometry).  
3. If pass 1 fixes only half (e.g. B OK, D still dishonest scale) → second refine on **remaining tile only**.  
4. Promote winner (`vision-refined-0N.png`); keep free-01 as provenance in MANIFEST.  
5. Update harvest: refined still carries same composition cues (or note if chrome changed).

**Gold pattern:** Melanom ABCDE free-01 → refined-01 (B soft edge) → refined-02 (D scale honesty).

### When to recreate instead of refine

| Prefer refine | Prefer recreate-with-harvest ([04](04-recreate-typst.md)) |
|---|---|
| Few label/icon fixes; layout already good | Many claim fixes; EN meta chrome; need maintainable code |
| Asset path likely | Code-if-equal bias after harvest |
| Icon-only DRIFT | Hierarchy must live in Typst module for chapter |

## Raster as **end product** (allowed, gated)

Media may Accept `graphic_mode: asset` with refined/free PNG **only if all gates pass**:

| Gate | Requirement |
|---|---|
| Claim audit | **PASS** (post-refine) |
| Form Spec Must-see | met |
| Free-vision proximity | harvest **must** cues still visible in asset (ambition track) |
| DPI | ≥300 @ print width **or** documented `screen-only` / pilot |
| MANIFEST | path, source, license, alt, print_ok |
| Decision Note | `realize_path: accept-asset` + rationale + harvest_path |
| Media Accept | winner = asset explicit |
| H-Gfx | if medical depiction risk |

If quality ≈ equal to code after harvest: **prefer code/hybrid** for maintainability (Human D4).

## NEVER

- Ship FAIL-audit free PNG as production  
- Silent “print OK” without DPI check (`scripts/check-image-dpi.py`)  
- Refine as cover for skipping harvest on ambition track
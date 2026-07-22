# Creative-first compose policy (Produkt A)

**Default for all production and pilot compose** (v0.2+).

## Principle

```text
1. Ideal presentation first   (Media: free didactic design — no catalog cage)
2. Best technical realization (Tech: full Typst / bookkit / @preview / custom)
3. Prefer known-good forms    ONLY when they ARE the best presentation
4. Fallback simpler           ONLY when ideal truly cannot be achieved
```

**Anti-pattern (forbidden as default):**  
“What maps cleanly to `stable` + BASIS?” → squeeze content into boxes/tables.

**Required default:**  
“What is the best medical-pedagogical presentation?” → implement that → document compromises.

## Roles

| Role | Duty |
|---|---|
| **Media** | Free ideal: unit→hypothesis, section plan, visual intent (flows, lanes, spreads). Catalog may be *seen*, never *limits ideation*. Wishlist = success signal. |
| **Tech** | Realize the ideal. Prefer stable bookkit forms when they match the ideal. Use planned APIs, CeTZ/Fletcher, custom helpers, page design when the ideal needs them. Spike when uncertain. Record fallbacks honestly. |
| **Validator** | **Default `creative`:** catalog inventory is advisory (warn on planned/unknown). Claims + compile + accept remain hard. Optional `--whitelist-mode strict` for legacy audits only. |

## Realization ladder (Tech)

1. **Ideal match** — stable form already is the best shape → use it (`mapped`).
2. **Extend / compose** — combine forms, local `#grid`/`#stack`, theme tokens, didactics facet.
3. **Diagram / custom (code)** — CeTZ, Fletcher, custom `#let` in chapter or shared pilot module, page-design helpers from packages when needed for flowcharts, urgency lanes, dual-column algorithms.
4. **Form Spec (Media)** — ambitious visual units need `*.form-spec.md` (Must-see, claim pins, zones, genre chrome) before Graphics free vision. Template: `domains/medical/templates/form-spec.template.md`.
5. **Graphic mode (visual units)** — **free vision first** (Form Spec + pins; **no** layout-template clone) → **claim audit** → multi-round **realize**: Typst recreate · true hybrid (labels **on** nodes) · AI refine · accept-asset. Prefer maintainable carrier when quality ≈ equal; **raster may be end product only with gates** (claim PASS, DPI/screen-only, MANIFEST, Accept). Skill playbook: `domains/medical/skill/medical-graphics/playbook/`. Record `graphic_mode`, `form_spec_path`, `vision_path`, `realize_path`.
6. **Spike** — prove vision and/or realization → PDF/PNG. Types: vision-free · recreate-code · recreate-hybrid · refine-ai · ab-pair · layout. Scaffold: `./scripts/graphics-spike-init.sh <slug> [recipe]`.
7. **Fallback** — simpler form (`approx`) only after attempt + note *why* ideal failed. Never silent downgrade; never skip graphics work when the ideal needs it.

### Graphic modes (summary)

| `graphic_mode` | Meaning |
|---|---|
| `code` | Typst/bookkit/@preview only |
| `asset` | Image file main carrier (**gated** if AI raster) |
| `hybrid` | Asset + Typst labels **on** nodes (not foot-legend-only) |
| `ab-test` | Multiple candidates; Media Accept chooses winner |
| `none` | No graphic object |

| `realize_path` | Meaning |
|---|---|
| `recreate` | Technical recreate of free vision |
| `refine` | AI refine with book-visual-standards |
| `accept-asset` | Promote vision/refined asset to production carrier (gates) |
| `n/a` | No free vision |

Media owns Form Spec + Accept (ideal / Form Spec proximity). Graphics owns free vision + claim audit + Decision Note + assets. Tech embeds the winner.

## Catalog role (not a cage)

- `forms.yaml` **stable** = preferred, tested library of high-value patterns.
- `planned` = known gaps to implement or approximate deliberately.
- **Custom / uncatalogued** = allowed when ideal requires it; file a catalog-gap afterward so the library grows.
- BASIS.md = **guidance** for common Typst constructs, not an exclusive production ban list.

## Still non-negotiable

| Always | Never |
|---|---|
| Critical Claims **copy-through** (no paraphrase) | Clinical invention / new thresholds |
| Content SoT stays Produkt C (read-only) | Content rewrite in layout |
| Fail-fast compile (no auto-heal loops) | “Green compile = good design” |
| Media Accept on **proximity to ideal** | Accept only because whitelist/minima pass |
| Document fallbacks in feasibility | Quiet table-only monotony |

## Validator modes

| Mode | CLI | Behavior |
|---|---|---|
| **creative** (default) | `--whitelist-mode creative` | planned / unknown form-like calls → **warn**; do not fail |
| **strict** | `--whitelist-mode strict` | planned / unknown → **fail** (legacy audits, pin freeze demos) |

Claims, accept, freeze (production profile), and compile stay hard in both modes.

## Skills

- Media: `domains/medical/skill/media-brief/` (+ Form Spec)
- Graphics: `domains/medical/skill/medical-graphics/` (playbook 00–09; free → audit → recreate/hybrid/refine)
- Guides: `Guides/Medical-Presentation-Forms.md`, `Guides/Medical-Graphics-Playbook.md`
- Tech: `toolset/skill-pack/compose-chapter/`
- Engine: this directory + `validate/`

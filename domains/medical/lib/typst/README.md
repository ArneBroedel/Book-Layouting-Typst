# Medical Typst graphic modules (Produkt B)

**Stable** KL / illness-script presentation modules harvested from
`toolset/compose/spikes/graphics/` (workspace-split Phase 2).

Spikes under `toolset/compose/spikes/graphics/*/lib/` are **thin re-exports** of these paths.
Prefer importing from here in new work.

## Layout

```text
domains/medical/lib/typst/
  kl-core/     # form grammar: urgency, mimic, discrimination, cue matrix, …
  kl-wave5/    # compartment, stroke, MI, anaphylaxie, suicid
  kl-wave6/    # sepsis, gicht, LE
  README.md
```

## Import examples

```typst
#import "/domains/medical/lib/typst/kl-core/us-time-scope.typ": time-tier, scope-frame, us-a-erysipel
#import "/domains/medical/lib/typst/kl-wave5/compartment.typ": *
#import "/domains/medical/lib/typst/kl-wave6/sepsis.typ": us-sepsis, mimic-sepsis, flag-cluster-sepsis
```

Requires monorepo/studio `--root` with `packages/bookkit` (theme tokens) and fonts.

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-wave6/spike-grammar.typ \
  dist/spikes/graphics/kl-wave6/grammar.pdf
```

## Version note

Not a separate Typst package pin yet. Track with domain media / monorepo; when Produkt B
splits (workspace-split Phase 3 trigger), this tree moves with `domains/medical/`.

## Do not

- Put these modules into `packages/bookkit` foundation (medical SoT).
- Commit intermediate free-vision PNGs without MANIFEST `accepted` (`assets/CANONICAL.md`).
- Treat spike drivers (`spike-*.typ`) as library SoT — only `lib/*.typ` here.

## Related

- Skill: `domains/medical/skill/medical-graphics/`
- Form library: `…/references/kl-form-library.md`
- Asset policy: `domains/medical/assets/CANONICAL.md`
- Ownership: `domains/medical/OWNERSHIP.md`

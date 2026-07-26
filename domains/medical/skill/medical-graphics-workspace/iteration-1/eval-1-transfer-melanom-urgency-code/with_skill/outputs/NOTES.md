# NOTES — eval-1 transfer Melanom urgency (with_skill)

## Task

Realize **U-urgency + U-scope** for Melanom (V-10) as Typst code via **pattern transfer**.

| Item | Value |
|------|--------|
| Form Spec | `domains/medical/briefs/kl-melanom-urgency.form-spec.md` |
| Recipe | `kl-urgency-scope-stack` + **exceptional-T1** |
| Geometry source | `toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ` |
| Skill | `medical-graphics` · playbook R1 recreate · `kl-form-library` Melanom row |
| `realize_path` | `recreate` (code) |
| `graphic_mode` | `code` |
| Free vision | skipped (grammar / band unit; ambition optional) |

## Pattern transfer decisions

1. **Reuse:** `time-tier` left-bar cards, `scope-frame` square double-geometry + hairline break, bookkit `palette` semantic colors.
2. **Do not reuse ACS solid-header T1:** Melanom content says screening is *typically not primary 112* → **`t1-exception`** compact quiet-strong strip (danger left edge, small chip, no full solid red wall).
3. **New pins only:** all German claim text from Form Spec claim table (Welle-06 §5); no Erysipel/ACS pins.
4. **Weight encoding:** T2 (amber/warning, full card) ≥ T3 (info/blue, full card) > T4 (teal/primary); T1 exception only; SCOPE outside TIME ladder.
5. **No form-meta** in figure (no “keine Dringlichkeitsstufe”, no EN stage titles, no ontology IDs in graphic).

## Zone → realization

| Zone | Loudness | Implementation |
|------|----------|----------------|
| T1 exception | quiet-strong | `t1-exception` compact strip |
| T2 | loud | `time-tier` warning bar + triggers + Handlung |
| T3 | medium-loud | `time-tier` info bar + Hutchinson/Ugly Duckling |
| T4 | medium | `time-tier` primary + treat/net/screening |
| SCOPE | quiet-strong border | `scope-frame` after hairline |

## Must-see checklist (Form Spec)

- [x] T2 and T3 **distinct** labels and weight  
- [x] T1 only as **exception** (vital), not primary melanoma 112 wall  
- [x] ACTION (Handlung) inside each tier  
- [x] SCOPE separate geometry; **no** form-meta caption  
- [x] Explicit **keine destruktiven Maßnahmen** in T2 Handlung and SCOPE  
- [x] Genre: illness-script / teal; solid red only as small T1 exception strip  

## Exports

| File | Role |
|------|------|
| `melanom-urgency.typ` | `#us-melanom()`, plus local `time-tier` / `t1-exception` / `scope-frame` |
| `spike-recreate.typ` | Compile entry |
| `melanom-urgency.pdf` | Compile artifact (if build succeeded) |

## Compile

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-1-transfer-melanom-urgency-code/with_skill/outputs/spike-recreate.typ \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-1-transfer-melanom-urgency-code/with_skill/outputs/melanom-urgency.pdf
```

## Boundary notes

- Did **not** invent clinical content; pins are Form Spec copy-through (light typographic compression only).
- Did **not** write Form Spec / Accept Decision Note (Graphics realize only).
- Studio `lib/melanom.typ` already holds a gold `us-melanom()`; this eval output is a **self-contained** transfer under the workspace path (new local module, not a re-export of the spike lib).

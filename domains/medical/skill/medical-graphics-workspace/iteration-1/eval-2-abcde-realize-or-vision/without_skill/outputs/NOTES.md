# NOTES — eval-2 without_skill (ABCDE realize)

## Source

- Form Spec only: `domains/medical/briefs/kl-melanom-abcde.form-spec.md`
- Skills medical-graphics / media-brief **not** read (eval constraint)

## Realization

| File | Role |
|---|---|
| `abcde.typ` | Code-first letter cascade; function `#abcde-melanom()` |
| `abcde.vision.md` | Optional free-vision note for later raster/skin-field |

## Zones → layout

1. **Job frame** — pin wording: strukturierter Blick; Früherkennung; Zuweisung  
2. **Letter spine A–E** — vertical cascade of letter badges + contiguous criteria  
3. **Ugly Duckling** — amber side-badge band (distinct from teal letters, equal job)  
4. **Action micro** — “→ zuweisen bei Suspekt” + forbidden destructive measures  

## Claim pins used (no invention)

| Pin | Text |
|---|---|
| A | Asymmetrie |
| B | unscharfe/unregelmäßige Begrenzung |
| C | Farbvielfalt (Color) |
| D | Durchmesser typisch > 5 mm |
| E | Evolution |
| Ugly Duckling | eine Läsion unterscheidet sich klar von den übrigen Nävi |
| Forbidden | keine Biopsie, keine Kürettage, keine destruktiven Maßnahmen an suspekten Läsionen |

## Chrome

Recognition teal/primary cascade (not emergency red wall). Accent only for Ugly Duckling + action pointer.

## Compile

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-2-abcde-realize-or-vision/without_skill/outputs/abcde.typ \
  /tmp/abcde-eval2.pdf
```

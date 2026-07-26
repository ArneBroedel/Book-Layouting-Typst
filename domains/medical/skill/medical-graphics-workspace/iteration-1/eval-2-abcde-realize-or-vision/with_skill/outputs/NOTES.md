# NOTES — eval-2 ABCDE realize (with medical-graphics skill)

## Inputs

- Form Spec: `domains/medical/briefs/kl-melanom-abcde.form-spec.md`
- Skill: medical-graphics · playbook **04** (Typst recreate) · recipe candidate **`kl-abcde-look`**
- Library: `references/kl-form-library.md` → Melanom ABCDE look · gold `abcde-melanom()`

## Pipeline applied

| Step | Action |
|------|--------|
| G0 | Unit U-cues / structured look; recipe `kl-abcde-look` (candidate) |
| G1 | Free vision **deferred** (optional) — short brief in `abcde.vision.md` for later |
| G2 | Pins taken from Form Spec claim table (no invented clinical text) |
| G3 R1 | **Code recreate** → `abcde.typ` · `#abcde-melanom()` |
| G3 R2–R3 | Not needed for this eval (code-first pin-safe cascade) |

## Zones → layout

| Form Spec zone | Realization |
|----------------|-------------|
| Letter spine A–E | Vertical cascade: solid letter tiles + criterion cards |
| Ugly Duckling | Medium-loud amber side beat (badge + pin sentence), not a sixth letter |
| Action micro | Teal strip: zuweisen + forbidden destructive measures |
| Quiet | No sources / no form-meta |

## Claim pins (copy-through)

- A Asymmetrie  
- B unscharfe/unregelmäßige Begrenzung  
- C Farbvielfalt (Color)  
- D Durchmesser typisch > 5 mm  
- E Evolution  
- Ugly Duckling: eine Läsion unterscheidet sich klar von den übrigen Nävi  
- Job: strukturierter Blick; Früherkennung; rechtzeitige ärztliche Zuweisung  
- Forbidden: keine Biopsie, keine Kürettage, keine destruktiven Maßnahmen  

## Urgency encoding

Recognition chrome (primary teal gradient on A–E). **Not** solid-red emergency wall. Warning accent only on D / Ugly Duckling / action micro hierarchy — not a TIME stack.

## Must-see checklist

- [x] All five letters DE criteria  
- [x] D typisch > 5 mm  
- [x] Evolution  
- [x] Ugly Duckling  
- [x] No PT diagnosis / no excision call  
- [x] No form-meta  
- [x] Visual letter form (cascade), not plain table prose  

## Artifacts

| File | Role |
|------|------|
| `abcde.typ` | `#abcde-melanom()` + standalone demo page |
| `abcde.vision.md` | Optional free-vision brief (labels pinned) |
| `NOTES.md` | This Decision/realize note |
| `abcde.pdf` | Compile of demo (if present) |

## Compile

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-2-abcde-realize-or-vision/with_skill/outputs/abcde.typ \
  domains/medical/skill/medical-graphics-workspace/iteration-1/eval-2-abcde-realize-or-vision/with_skill/outputs/abcde.pdf
```

## Decision

**realize_path:** `code` · letter cascade matches Form Spec presentation hypothesis and grammar track for checklist recognition. Free vision only if spatial skin-field ambition is wanted later — then claim audit before any asset path.

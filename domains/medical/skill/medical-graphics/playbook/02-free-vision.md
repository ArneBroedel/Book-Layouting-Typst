# Playbook 02 — Free vision (G1)

## Input

Form Spec (Must-see + pins + genre) + Vision template.

## Steps

1. Write `domains/medical/briefs/<slug>.vision.md` from template.  
2. Set **structure_reference: none**.  
3. Copy claim pins from Form Spec into vision “Content to show”.  
4. Restate invariants + must-not (German only, no invention).  
5. Generate:

```bash
./scripts/graphics-vision-agy.sh \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-01.png \
  --preview dist/spikes/graphics/<slug>/vision-free-01.png
```

6. Cap **2** free gens.  
7. Update MANIFEST.md.  
8. **Immediately** run [03-claim-audit](03-claim-audit.md).

## Rules

- **Do not** attach repo SVG/PNG flowcharts as layout templates.  
- Composition free; **labels** constrained by pins.  
- Detail: [`../references/free-vision.md`](../references/free-vision.md)

## Output

| file | role |
|---|---|
| `vision-free-01.png` | free candidate |
| `*.vision.md` | brief + self-check |

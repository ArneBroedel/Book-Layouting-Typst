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
./scripts/bookkit graphics vision --backend agy \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-01.png \
  --preview dist/spikes/graphics/<slug>/vision-free-01.png

# On agy 429 / quota exhaustion — real free vision via Gemini Web UI:
./scripts/bookkit graphics vision --backend gemini \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-gemini-01.png
```

6. Cap **2** free gens (count agy + gemini together).  
7. Update MANIFEST.md (`ai-gen:nanobanana` or `ai-gen:gemini-web-nanobanana`).  
8. **Immediately** run [03-claim-audit](03-claim-audit.md).

## Rules

- **Do not** attach repo SVG/PNG flowcharts as layout templates.  
- Composition free; **labels** constrained by pins.  
- Detail: [`../references/free-vision.md`](../references/free-vision.md)  
- **Body / cut / organ:** **paused by default** (Human 2026-07-29) — do not free-gen anatomy; use non-body forms unless Human reopens H-Gfx.

### Silent fallback forbidden (Wave-5 lesson)

If `generate_image` / Nano Banana **fails** (e.g. HTTP 429 quota) and the agent falls back to **Typst/SVG export**:

| Required | Forbidden |
|----------|-----------|
| Name carrier explicitly: `code-fallback` or `typst-render` — **not** free vision | Saving Typst output as `vision-free-01.png` and Accepting as free vision |
| Prefer intentional Typst modules under `lib/` | Fake anatomy labeled as Querschnitt |
| Spatial/patho units | Unsupervised body/anatomy free vision (paused) |

Claim audit: if a free image contains body anatomy without H-Gfx reopen → **do not accept-asset**; prefer code non-body units.

## Output

| file | role |
|---|---|
| `vision-free-01.png` | free candidate |
| `*.vision.md` | brief + self-check |

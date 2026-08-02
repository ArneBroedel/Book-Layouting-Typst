# Playbook 02 — Free vision (G1)

## Input

- Form Spec (Must-see + pins + genre) + Vision template  
- **Track = `free-vision-ambition`** from [01-from-form-spec](01-from-form-spec.md)  
- If track is `grammar-only` or `none` → **skip this playbook** (no free-gen theater)

## Steps

1. Confirm track is written (`free-vision-ambition`).  
2. Write `domains/medical/briefs/<slug>.vision.md` from template.  
3. Set **structure_reference: none**.  
4. Copy claim pins from Form Spec into vision “Content to show”.  
5. Restate invariants + must-not (German only, no invention).  
6. Generate:

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

7. Cap **2** free gens (count agy + gemini together).  
8. Update MANIFEST.md (`ai-gen:nanobanana` or `ai-gen:gemini-web-nanobanana`).  
9. **Write / draft harvest** (composition cues) **before or with** claim audit — you can list hierarchy/chrome even if labels DRIFT.  
   - Template: `domains/medical/templates/graphic-harvest.template.md`  
   - Single unit → `## Harvest` section in `*.graphics.md`  
   - Multi-unit → `*.harvest.md` or headed sections  
10. **Immediately** open the PNG and run **Semantic Read** ([prompt-and-semantic-read](../references/prompt-and-semantic-read.md)) — hard gate.  
11. **Immediately** run [03-claim-audit](03-claim-audit.md) (includes illustration-semantics + Semantic Read).

## Rules

- **Do not** attach repo SVG/PNG flowcharts as layout templates.  
- Composition free; **default: no labels / no leader callouts in the free raster** — Typst owns German pins (CRPS 2026-07-31).  
- Prefer **one visual claim per gen** (not a multi-pin labeled dashboard).  
- **Prompt craft:** short, positive, one photographable subject — **not** long kitchen-sink prompts and **not** per-chapter negative word lists. See [`../references/prompt-and-semantic-read.md`](../references/prompt-and-semantic-read.md).  
- **Jargon preflight (§1.1):** before gen, rewrite dual-meaning process words (*atomic*, *cascade*, abstract *urgency*, …) into concrete subject language so the image model cannot take them literally (e.g. *atomic* → physics atoms). Intent “focused single detail” is prompt *shape*, not the word *atomic*.  
- **Clinical context:** when the job is in-situ gestalt (lesion, rash, joint), prefer skin/body field — not freestanding sticker cutouts on pure white.  
- **One visual claim / one aspect per learner job** — do not stack three mouth variants for one FAST Face job.  
- **Immediately after each gen:** open the image and run **Semantic Read** (hard gate in that reference). FAIL → regen or demote **before** harvest-as-winner / montage / Accept path. Caption does not save a FAIL.  
- **Typst/CeTZ teaching glyphs** (not only free gen): same Semantic Read without caption; anti-doodle FAIL → redraw or demote (see SoT §2). 
- Detail: [`../references/free-vision.md`](../references/free-vision.md)  
- **Body / cut / organ / contralateral limb compare:** **paused by default** (Human 2026-07-29 / 2026-07-31) — do not free-gen anatomy; use non-body forms unless Human reopens H-Gfx.  
- **No free vision without harvest** on ambition track (exit criterion).  
- **Pretty first-glance is not exit criterion** — illustration-semantics + Semantic Read + laterality must survive textbook scrutiny.

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
| harvest section / `*.harvest.md` | composition cues to port (non-claim) |

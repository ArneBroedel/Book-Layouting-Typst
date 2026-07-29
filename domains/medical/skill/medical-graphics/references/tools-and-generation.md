# Tools and generation

## Modes

| Mode | When | Structure file attach? |
|---|---|---|
| **free** | Phase A default | **No** |
| **refine** | Phase B2 | No (unless intentional) |
| **structure-transfer** | Opt-in remake | Yes |
| **recreate-code / hybrid** | Phase B1 | N/A (Typst/SVG hand or code) |

## Tool matrix

| Tool | Role |
|---|---|
| **Antigravity Nano Banana** via `agy` | Default free vision + refine (when quota OK) |
| **Gemini Web UI Nano Banana** via `sh-gemini-chat` | **Quota bypass** when `agy` 429; logged-in Google session |
| **Grok Imagine** | Optional free / edit |
| **Typst / Fletcher / CeTZ** | Recreate, code spikes — **not** silent free-vision substitute |
| **Hand SVG** (Inkscape…) | Gold vector / hybrid base |
| **`bookkit graphics`** (vision / refine / …) | **Preferred CLI** (wraps scripts below) |
| **scripts/graphics-vision-agy.sh** | Free vision engine (agy) |
| **scripts/graphics-vision-gemini.sh** | Free vision engine (Gemini web UI) |
| **scripts/graphics-refine-agy.sh** | Refine with standards + notes |

### Gemini Web UI path (Wave-5)

```bash
# Session once:
python3 …/sh-gemini-chat/scripts/gemini_chat/cli.py doctor   # or login

./scripts/bookkit graphics vision --backend gemini \
  --brief domains/medical/briefs/<slug>.vision.md \
  --out domains/medical/assets/<slug>/vision-free-gemini-01.png

# Low-level:
python3 …/cli.py image "…" --out /tmp/out.png --json
```

- Clicks **„Bild erstellen“**, dismisses discovery card, waits for `generated-image`, downloads original.  
- Skill SoT: `shared-agent-config/.agents/skills/sh-gemini-chat/` (`cli.py image`, contract selectors).  
- Manifest: `ai-gen:gemini-web-nanobanana` + date + optional conversation permalink.  
- **Never** Accept Typst-after-agy-429 as free vision.

## AI rules

**Exploration:** free vision allowed.  

**Production:**

- Prefer recreate hybrid/code when quality holds  
- Asset-full AI: claim audit + manifest + DPI; H-Gfx if risk motif  
- Never treat AI as Content SoT  
- Manifest: `ai-gen:nanobanana` \| `ai-gen:gemini-web-nanobanana` \| `ai-gen:imagine` + date  

## What stays out of free prompts

- Paths to existing flowchart SVG/PNG as “copy this layout”  
- Catalog form ids as design ceiling  

## Theme

See `book-visual-standards.md` for Phase B only.

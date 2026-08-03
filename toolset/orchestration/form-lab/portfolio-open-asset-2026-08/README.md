# Open-Asset pilot wave (2026-08)

Parallel lab wave **Pass O** for the four KL anchors:

| Chapter | Lab id | Compose pilot |
|---|---|---|
| Gicht | `gicht-2026-08-o` | `toolset/compose/pilots/form-lab-gicht-o/` |
| Melanom ABCDE | `melanom-abcde-2026-08-o` | `toolset/compose/pilots/form-lab-melanom-abcde-o/` |
| Anaphylaxie | `anaphylaxie-2026-08-o` | `toolset/compose/pilots/form-lab-anaphylaxie-o/` |
| Schlaganfall | `schlaganfall-2026-08-o` | `toolset/compose/pilots/form-lab-schlaganfall-o/` |

**Pins:** reused from wave-c labs (`*-2026-08-c/pins.md`) — layout only.  
**Policy:** `domains/medical/OPEN-ASSET-POLICY.md`  
**Medium rules:** `../_templates/medium-rules-O.md`

## Compile all

```bash
for ch in gicht melanom-abcde anaphylaxie schlaganfall; do
  typst compile --root . --ignore-system-fonts --font-path fonts \
    toolset/compose/pilots/form-lab-${ch}-o/chapter.typ \
    dist/form-lab/${ch}-2026-08-o/chapter.pdf
done
```

## Compare

Open wave-c Pass S vs Pass O PDFs/PNGs side by side; note where open photos win (Blickdiagnose) vs where icons/schema still needed.

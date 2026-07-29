# Claim audit — Free Vision (ambition track)

**Date:** 2026-07-26  
**Mode:** free vision G1 → audit before Accept-asset  
**Rule:** German pins only; no invented thresholds; no form-meta preferred in print

---

## 1. M-B Mimic mask/peel

| | |
|--|--|
| **Asset** | `domains/medical/assets/kl-m-b-mimic/vision-free-01.png` |
| **Verdict** | **PASS** (minor non-pin subtitle) |
| **Must-see** | Four maps frame→danger ✓; peel metaphor ✓; no Label/Darunter ✓ |
| **Drift** | Subtitle „Fehlinterpretationen beim Erysipel“ not in pins (cosmetic) |
| **Clinical invent** | none |
| **realize_path recommend** | **accept-asset** or **recreate** peels in Typst; prefer asset for peel chrome + Typst title optional |

---

## 2. US-D Urgency meter / cards

| | |
|--|--|
| **Asset** | `domains/medical/assets/kl-us-d-urgency/vision-free-01.png` |
| **Verdict** | **DRIFT** (form-meta / EN fragments) |
| **Must-see** | T1≠T2 ✓; T3 omitted ✓; SCOPE separate ✓; triggers in T1 ✓ |
| **Drift** | English **„Action:“** / **„Trigger cluster“** as chrome (violates form-language + DE-only preference) |
| **Clinical invent** | T4 action simplified to „Rückkehrgründe“ only — shortened vs pin (acceptable compression) |
| **realize_path recommend** | **recreate** in Typst (US-A already stronger on DE) using vision as *composition* inspiration only; or refine-asset to strip EN meta |

---

## 3. CES Saddle spatial

| | |
|--|--|
| **Asset** | `domains/medical/assets/kl-ces-saddle/vision-free-01.png` |
| **Verdict** | **PASS** |
| **Must-see** | Saddle highlight ✓; bladder cluster ✓; bowel ✓; bilateral legs ✓; 112 + KI ✓ |
| **Drift** | Title „Notfall-Muster“; stylized organ icons (decorative, not new claims) |
| **Clinical invent** | no Restharn-ml ✓ |
| **realize_path recommend** | **accept-asset** for spatial quality; hybrid later if print DPI/labels need Typst control |
| **H-Gfx** | optional — anatomy motif; flag for Human if production |

---

## 4. Follow-ups executed

| Item | Result |
|------|--------|
| US-D refine | `vision-refined-01.png` — DE Handlung, no Trigger-cluster meta |
| US-D Typst | `lib/us-d-dashboard.typ` — Accept code winner |
| M-B Typst peel | `lib/m-b-peel.typ` — Accept code winner (asset optional showcase) |
| MSCC free vision | `kl-mscc-spine` PASS — Accept asset |

## Summary for Media Accept (final)

| Unit | Free vision | Suggested winner path |
|------|-------------|------------------------|
| M-B | strong peel | **code peel** (or asset showcase) |
| US-D | refined DE | **code dashboard** |
| CES saddle | strong spatial | **asset** (H-Gfx production) |
| MSCC spine | PASS | **asset** (H-Gfx production) |

See `kl-ambition.accept.md`.

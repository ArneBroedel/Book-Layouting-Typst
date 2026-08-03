# Personality rights and clinical ethics — open-assets

Copyright licenses **do not replace**:

- right of publicity / right to one’s image  
- patient consent / medical confidentiality norms  
- stigma and dignity considerations in teaching materials  

## Risk ladder

| Content | Default |
|---|---|
| Anonymous body part, no face, no tattoos/IDs | Often lower personality risk; still clinical gate |
| Face visible (disease or not) | **Gelb** — `personality_rights=unknown` unless cleared |
| Identifiable patient + diagnosis-implying caption | High — Human/Legal for production |
| Minors | Extra caution; prefer avoid |
| Deceased / historical | Still check context and dignity |
| Mimic images (e.g. Bell palsy for stroke chapter) | Allowed only if **clearly labeled MIMIC** |

## Field `personality_rights`

| Value | Meaning |
|---|---|
| `n/a` | No person identifiable (schemas, icons, micro graphs) |
| `unknown` | Person may be identifiable; no independent clearance on file |
| `asserted-uploader` | Commons/uploader claims release only |
| `cleared-human` | Publisher/Human documented clearance |

**Production Accept rule of thumb:** faces with `unknown` or only `asserted-uploader` → Human gate before book freeze.

## Stroke / emergency faces

- Prefer FAST as **Typst + icons**  
- Open facial photos: only with strong rights **and** ethics review  
- Bell palsy photos: teach **mimic**, never as “this is stroke”  

## What agents must write in captions

If using a sensitive photo:

- Honest description (no overclaim)  
- Mimic label when applicable  
- Full rights credit  
- Avoid sensational cropping  

## What agents must not do

- Scrape social clinical photos  
- Infer consent from “image is on Commons”  
- Use recognizable staff/patients from partner clinics without written grant  
- Hide uncertainty (“looks free”)  

## Clinical honesty vs license

An image can be **rights-green and clinically wrong** (mis-tagged gout nail graphic). Clinical gate rejects regardless of CC0.

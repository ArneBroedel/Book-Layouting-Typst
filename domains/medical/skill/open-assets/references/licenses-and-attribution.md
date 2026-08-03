# Licenses and attribution — open-assets

**Not legal advice.** Process for agents and producers; production print still needs Human/Legal when gelb.

## Traffic light (commercial textbook / paid PDF)

### Grün (default production-capable after docs)

| License | Notes |
|---|---|
| **CC0** | Max freedom; still credit source in CREDITS for traceability |
| **Public domain** / PD-USGov | Confirm mark is real PD; credit agency/photographer when known |
| **CC BY** (any version) | Commercial + adapt OK **with** attribution |
| **MIT / Apache-2.0** icons | Preserve license notice in project credits |

### Gelb (Human / Legal)

| Case | Why |
|---|---|
| **CC BY-SA** | Derivatives of the image must be SA; collages/adaptations costly |
| **Editorial-only stock** | Often forbids commercial textbook-style use |
| Dual/conflicting tags | Resolve before accept |
| Uploader-only personality claim | Not independent clearance |
| Servier / vendor terms drift | Re-read terms on use date |

### Rot (do not embed)

| Case | Why |
|---|---|
| **CC BY-NC** and all NC* | Sale of book = commercial |
| **CC BY-ND** when you crop, recolor, overlay, or label **into** the raster | Adaptation forbidden |
| No license / all rights reserved | |
| Social / Google scrape | |
| “Free for education only” without commercial | |

**Practical ND rule:** If you need Typst labels, put them **outside** the image. If you still must modify pixels, do not use ND.

**Practical SA rule:** Prefer not to use SA for hybrid teaching figures; if used, do not create derivatives that force SA on your whole design system — keep image unmodified and credit SA.

---

## What CC BY typically requires

Provide **reasonable** attribution including:

1. **Author / rights holder** (required when known)  
2. **Title** of the work (if supplied)  
3. **Source** (URL to file page or canonical source)  
4. **License name + link** to license deed/legalcode  
5. **Modifications** indicator if adapted  

### Full string template

```text
"{Title}" by {Author}, via {Platform}, {License short}
({license_uri}), {provenance_url}
{Modification note if any}
```

### Short caption template (figure)

```text
{Author} / {Platform} · {License short}
```

Short caption is **not enough alone** for BY — full string must appear in **Abbildungsnachweis / CREDITS**.

### Examples

**Good BY:**

```text
"Podagra" by Gonzosft, via Wikimedia Commons, CC BY 3.0 DE
(https://creativecommons.org/licenses/by/3.0/de/legalcode),
https://commons.wikimedia.org/wiki/File:Podagra.jpg
```

**Bad BY (insufficient):**

```text
Wikimedia · Podagra.jpg · CC BY 3.0 DE
```

**CC0 / PD short:**

```text
Source: Wikimedia Commons, File:Hives_urticaria.jpg (CC0). Retrieved 2026-08-03.
```

---

## SPDX-ish labels (use consistently in MANIFEST)

| Write | Meaning |
|---|---|
| `CC0-1.0` | CC0 |
| `CC-BY-4.0` | CC BY 4.0 |
| `CC-BY-3.0` | CC BY 3.0 |
| `CC-BY-3.0-DE` | CC BY 3.0 Germany |
| `CC-BY-2.5` | CC BY 2.5 |
| `CC-BY-SA-4.0` | ShareAlike (gelb) |
| `PD` / `PD-USGov` | Public domain |
| `MIT` | MIT icons |
| `UNKNOWN` | **cannot accept** |

---

## License URIs (common)

| License | URI |
|---|---|
| CC BY 4.0 | https://creativecommons.org/licenses/by/4.0/ |
| CC BY 3.0 | https://creativecommons.org/licenses/by/3.0/ |
| CC BY 3.0 DE | https://creativecommons.org/licenses/by/3.0/de/ |
| CC BY 2.5 | https://creativecommons.org/licenses/by/2.5/ |
| CC0 1.0 | https://creativecommons.org/publicdomain/zero/1.0/ |
| CC BY-SA 4.0 | https://creativecommons.org/licenses/by-sa/4.0/ |

---

## Fair use / Zitatrecht (§ 51 UrhG)

**Do not** rely on fair use or citation right as the **primary** basis for full textbook figures that illustrate your own teaching text.

Citation of an image is narrow (discussion of that image itself), not a free pass for illustration. Prefer explicit licenses.

---

## Icons special cases

| Stack | Action |
|---|---|
| Health Icons CC0 | Optional credit; still list in CREDITS for provenance |
| Font Awesome Free | Follow FA Free license; project-level attribution |
| Mixed icon styles | Prefer **one** system per chapter |

Icons must not invent clinical thresholds (no “red icon = 112” unless text says so).

---

## Blausen and branded medical art

- Often CC BY with **specific** credit wording  
- Include organization name when required  
- Treat as illustration, not clinical photo proof  

---

## Paid stock checklist

- [ ] License tier allows **print book** / educational commercial  
- [ ] Not Editorial-only  
- [ ] Seat/user limits OK for publisher  
- [ ] Invoice + license PDF stored next to asset  
- [ ] Asset ID in MANIFEST  

---

## Agent verification

For Commons files:

```bash
python3 domains/medical/skill/open-assets/scripts/verify_commons_meta.py \
  "File:Podagra.jpg"
```

Compare `LicenseShortName`, `Artist`, `AttributionRequired` to MANIFEST. Mismatch → do not accept until resolved.

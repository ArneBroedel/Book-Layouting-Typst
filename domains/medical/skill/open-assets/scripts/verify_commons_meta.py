#!/usr/bin/env python3
"""Fetch Wikimedia Commons extmetadata for File: titles (license audit helper)."""
from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.parse
import urllib.request

UA = "BookLayoutingTypst-open-assets/1.0 (license verify; local research)"


def api(params: dict) -> dict:
    url = "https://commons.wikimedia.org/w/api.php?" + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    with urllib.request.urlopen(req, timeout=45) as resp:
        return json.loads(resp.read().decode())


def strip_html(s: str) -> str:
    return re.sub(r"<[^>]+>", "", s or "").strip()


def main() -> int:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("titles", nargs="+", help='e.g. "File:Podagra.jpg"')
    p.add_argument("--json", action="store_true", help="machine-readable array")
    args = p.parse_args()

    titles = [t if t.startswith("File:") else f"File:{t}" for t in args.titles]
    data = api(
        {
            "action": "query",
            "format": "json",
            "titles": "|".join(titles),
            "prop": "imageinfo",
            "iiprop": "url|size|extmetadata|mime",
        }
    )
    pages = data.get("query", {}).get("pages", {})
    rows = []
    for page in pages.values():
        title = page.get("title", "?")
        if "missing" in page:
            rows.append({"title": title, "error": "missing"})
            continue
        ii = (page.get("imageinfo") or [{}])[0]
        meta = ii.get("extmetadata") or {}

        def m(key: str) -> str:
            return strip_html((meta.get(key) or {}).get("value", ""))

        row = {
            "title": title,
            "license": m("LicenseShortName"),
            "usage_terms": m("UsageTerms"),
            "artist": m("Artist"),
            "credit": m("Credit"),
            "attribution_required": m("AttributionRequired"),
            "width": ii.get("width"),
            "height": ii.get("height"),
            "mime": ii.get("mime"),
            "url": ii.get("url"),
            "descriptionurl": ii.get("descriptionurl"),
        }
        rows.append(row)

    if args.json:
        print(json.dumps(rows, ensure_ascii=False, indent=2))
    else:
        for r in rows:
            if r.get("error"):
                print(f"{r['title']}: ERROR {r['error']}")
                continue
            print(f"=== {r['title']} ===")
            print(f"  license:     {r['license']}")
            print(f"  artist:      {r['artist'][:120]}")
            print(f"  credit:      {r['credit'][:120]}")
            print(f"  attr_req:    {r['attribution_required']}")
            print(f"  size:        {r['width']}x{r['height']}  {r['mime']}")
            print(f"  page:        {r['descriptionurl']}")
            mm = (r["width"] or 0) / 300 * 25.4
            print(f"  max_mm@300:  {mm:.1f}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

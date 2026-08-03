#!/usr/bin/env python3
"""Heuristic check: CC-BY rows need author-like attribution_full."""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("manifest", type=Path, help="MANIFEST.md path")
    args = ap.parse_args()
    text = args.manifest.read_text(encoding="utf-8", errors="replace")
    # Very light table parse: lines with pipes containing BY
    issues = []
    for i, line in enumerate(text.splitlines(), 1):
        if not line.strip().startswith("|"):
            continue
        if re.search(r"CC-?BY|CC BY", line, re.I) and "license" not in line.lower():
            # header skip
            if "path" in line and "learner_job" in line:
                continue
            low = line.lower()
            if "accepted" not in low and "candidate" not in low:
                # still check if looks like data row with by license
                pass
            has_by = bool(re.search(r"cc-?by(?!-sa)|cc by (?!sa)", line, re.I))
            if not has_by:
                continue
            # attribution_full column hard to index; check line has " by " or author-like
            if "attribution_full" in text[:500].lower():
                # require either ' by ' in line or quoted title pattern
                if " by " not in line.lower() and not re.search(r'"[^"]+"\s+by\s+', line, re.I):
                    # many tables put attribution in separate field - flag soft
                    if "accepted" in low:
                        issues.append((i, "accepted BY row may lack ' by ' author form in line", line[:120]))
            else:
                issues.append((i, "MANIFEST missing attribution_full column header", ""))

    # Also: accepted+BY should appear near full credit files
    if "attribution_full" not in text.lower() and re.search(r"CC-?BY|CC BY", text, re.I):
        issues.append((0, "No attribution_full field found while BY licenses present", ""))

    if not issues:
        print(f"OK (heuristic): {args.manifest}")
        return 0
    print(f"ISSUES in {args.manifest}:")
    for lineno, msg, snip in issues:
        print(f"  L{lineno}: {msg}")
        if snip:
            print(f"         {snip}")
    print("Note: heuristic only — verify author + license_uri + provenance_url manually.")
    return 1


if __name__ == "__main__":
    sys.exit(main())

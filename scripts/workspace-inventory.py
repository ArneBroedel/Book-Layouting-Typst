#!/usr/bin/env python3
"""Regenerate devtracks/workspace-inventory/* from the live workspace tree.

Excludes: .git, __pycache__, *.pyc, .playwright-mcp
"""
from __future__ import annotations

import csv
import os
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "devtracks" / "workspace-inventory"
SKIP_DIR_NAMES = {".git", "__pycache__", ".playwright-mcp"}


def top_bucket(rel: str) -> str:
    p = rel.split("/")
    t = p[0]
    if t == "domains":
        if len(p) > 1 and p[1] == "medical":
            if "skill/medical-graphics" in rel or "medical-graphics-workspace" in rel:
                return "B-medical-graphics"
            if "skill/media-brief" in rel or "media-brief-workspace" in rel:
                return "B-media-brief"
            if "/assets/" in rel:
                return "B-medical-assets"
            if "/briefs/" in rel:
                return "B-medical-briefs"
            if "/recipes/" in rel or "/templates/" in rel:
                return "B-medical-meta"
            return "B-medical-other"
        if len(p) > 1 and p[1] == "content-maturity":
            return "C-content-maturity"
        return "B-domains-root"
    if t == "packages":
        return "A-packages-bookkit"
    if t == "toolset":
        if "compose/spikes" in rel:
            return "A/B-compose-spikes"
        if "compose/validate" in rel or "compose/tests" in rel or "compose/fixtures" in rel:
            return "A-compose-engine"
        if "form-catalog" in rel:
            return "A-form-catalog"
        if "skill-pack" in rel:
            return "A-skill-pack"
        if "starter" in rel or "examples" in rel:
            return "A-starter-examples"
        if "orchestration" in rel:
            return "A-orchestration"
        return "A-toolset-other"
    if t == "src":
        return "A-showcase-book"
    if t == "scripts":
        if "graphics" in rel:
            return "B-graphics-scripts"
        if "print" in rel or "preflight" in rel or "check-image" in rel:
            return "A-prepress-scripts"
        if "workspace-inventory" in rel:
            return "META-docs-ux"
        return "A-build-scripts"
    if t == "prepress":
        return "A-prepress"
    if t == "pilots":
        return "A-pilots-dogfood"
    if t == "Guides":
        if "Medical" in rel or "KL-Form" in rel:
            return "B-guides-medical"
        return "A-guides-typst"
    if t in ("research", "templates"):
        return "R-research-corpus"
    if t == "devtracks":
        return "META-devtracks"
    if t == "dist":
        return "BUILD-dist"
    if t in (".github", ".grok", ".claude", ".agents"):
        return "META-agent-discovery"
    if t in ("docs", "workspaces"):
        return "META-docs-ux"
    if t in ("fonts", "assets", "test"):
        return "A-support"
    if t == ".vscode":
        return "META-editor"
    return "ROOT-misc"


PURPOSE = {
    "A-packages-bookkit": "Consumable Typst runtime (theme, components, didactics facet)",
    "A-showcase-book": "Flagship showcase book dogfooding bookkit",
    "A-compose-engine": "Compose validator CLI + fixtures/tests",
    "A/B-compose-spikes": "Experimental Typst graphics spikes (bridge A+B)",
    "A-form-catalog": "Generic form whitelist + gap process",
    "A-skill-pack": "Platform skills: bookkit, compose-chapter, orchestrator",
    "A-starter-examples": "Consumer starter + smoke examples",
    "A-orchestration": "Book production board/run-log demo",
    "A-toolset-other": "Toolset docs/tests misc",
    "A-build-scripts": "Build, setup, bookkit CLI",
    "A-prepress-scripts": "Print PDF/X, DPI, preflight",
    "A-prepress": "ICC profiles, PDF/X defs",
    "A-pilots-dogfood": "Consumer dogfood pilots (not content SoT)",
    "A-guides-typst": "Durable Typst layout theory & lessons",
    "A-support": "Fonts, placeholders, isolated tests",
    "B-medical-graphics": "medical-graphics skill + playbook",
    "B-media-brief": "media-brief skill + form-space",
    "B-medical-assets": "Domain vision/refined graphic assets",
    "B-medical-briefs": "Briefs, form-specs, accept, vision notes",
    "B-medical-meta": "Genre recipes + media templates",
    "B-medical-other": "Domain README/OWNERSHIP",
    "B-domains-root": "domains/ README",
    "B-guides-medical": "Medical media/graphics guides",
    "B-graphics-scripts": "Vision/refine shell helpers",
    "C-content-maturity": "Content review/freeze/proof kit",
    "R-research-corpus": "Ecosystem survey + template study corpus",
    "META-devtracks": "Active/archived plans",
    "BUILD-dist": "Generated PDFs/PNGs",
    "META-agent-discovery": "Skill symlinks + CI",
    "META-docs-ux": "Consumer docs, runbook, workspace",
    "META-editor": "VS Code tasks/settings",
    "ROOT-misc": "Root governance, scratch, licenses",
}


def role_of(rel: str, ext: str, is_link: bool, bucket: str) -> str:
    if is_link:
        return "symlink-discovery"
    if bucket == "BUILD-dist":
        return "build-artifact"
    if ext in ("png", "jpg", "pdf", "svg") and any(
        x in rel for x in ("assets", "vision", "spikes", "dist")
    ):
        return "visual-artifact"
    if ext == "typ":
        return "typst-source"
    if ext == "py":
        return "python-tool"
    if ext in ("sh", "ps1"):
        return "shell-tool"
    if ext == "md":
        return "markdown-doc"
    if ext in ("json", "yaml", "yml", "toml", "csv", "bib"):
        return "data-config"
    if ext in ("otf", "icc", "ps"):
        return "binary-resource"
    return "other"


def main() -> None:
    os.chdir(ROOT)
    OUT.mkdir(parents=True, exist_ok=True)
    rows: list[dict] = []
    by_bucket: dict[str, list] = defaultdict(list)

    for dirpath, dirnames, filenames in os.walk("."):
        dirnames[:] = [d for d in dirnames if d not in SKIP_DIR_NAMES]
        for fn in filenames:
            if fn.endswith(".pyc"):
                continue
            full = Path(dirpath) / fn
            rel = full.as_posix().lstrip("./")
            if rel.startswith(".git/"):
                continue
            try:
                size = full.stat().st_size
            except OSError:
                continue
            is_link = full.is_symlink()
            ext = full.suffix.lower().lstrip(".") or "(none)"
            bucket = top_bucket(rel)
            row = {
                "path": rel,
                "bytes": size,
                "ext": ext,
                "bucket": bucket,
                "role": role_of(rel, ext, is_link, bucket),
                "is_symlink": is_link,
                "purpose_bucket": PURPOSE.get(bucket, "?"),
            }
            rows.append(row)
            by_bucket[bucket].append(row)

    tsv = OUT / "file-index.tsv"
    with tsv.open("w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(
            f,
            fieldnames=[
                "path",
                "bytes",
                "ext",
                "bucket",
                "role",
                "is_symlink",
                "purpose_bucket",
            ],
            delimiter="\t",
        )
        w.writeheader()
        for r in sorted(rows, key=lambda x: x["path"]):
            w.writerow(r)

    summary = OUT / "bucket-summary.tsv"
    with summary.open("w", encoding="utf-8") as f:
        f.write("bucket\tfiles\tbytes\tmb\tpurpose\n")
        for b in sorted(
            by_bucket.keys(), key=lambda x: -sum(r["bytes"] for r in by_bucket[x])
        ):
            files = by_bucket[b]
            bts = sum(r["bytes"] for r in files)
            f.write(
                f"{b}\t{len(files)}\t{bts}\t{bts / 1e6:.2f}\t{PURPOSE.get(b, '')}\n"
            )

    (OUT / "all-files.txt").write_text(
        "\n".join(sorted(r["path"] for r in rows)) + "\n", encoding="utf-8"
    )

    # noise candidates
    noise_path = OUT / "noise-candidates.tsv"
    with noise_path.open("w", encoding="utf-8") as f:
        f.write("action\tpath\treason\n")
        for r in rows:
            p = r["path"]
            if r["bucket"] == "BUILD-dist":
                f.write(f"delete-or-gitignore\t{p}\tbuild output\n")
            elif p.startswith("scratch_") or p in (
                "v-cauda-compile.typ",
                "v-sept-compile.typ",
            ):
                f.write(f"delete\t{p}\tscratch root litter\n")
            elif "/_tmp/" in p:
                f.write(f"delete\t{p}\ttemp\n")
            elif "-workspace/" in p and r["ext"] in ("pdf", "html"):
                f.write(f"archive-or-gitignore\t{p}\tskill eval binary outputs\n")
            elif r["ext"] == "pdf" and (
                "spikes/" in p
                or p.startswith("test/")
                or (p.startswith("src/") and p.endswith(".pdf"))
            ):
                f.write(f"delete-from-git\t{p}\tcompiled PDF next to source\n")

    print(f"Indexed {len(rows)} files → {OUT}")


if __name__ == "__main__":
    main()

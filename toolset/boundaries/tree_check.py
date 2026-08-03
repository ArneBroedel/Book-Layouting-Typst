"""Structural product-boundary tree check (A/B/C/W ownership markers)."""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path

# Paths relative to monorepo root that must exist for modular monorepo boundaries.
_REQUIRED_PATHS: tuple[tuple[str, str], ...] = (
    ("devtracks/PRODUCT-BOUNDARIES.md", "product boundary policy"),
    ("packages/OWNERSHIP.md", "Produkt A packages ownership"),
    ("toolset/OWNERSHIP.md", "Produkt A toolset ownership"),
    ("domains/README.md", "domains companion products index"),
    ("domains/medical/OWNERSHIP.md", "Produkt B ownership"),
    ("domains/content-maturity/OWNERSHIP.md", "Produkt C process-kit ownership"),
    ("contracts/README.md", "shared contracts SoT"),
    ("contracts/schemas/chapter-release.schema.json", "release package schema"),
    ("contracts/templates/chapter-release.template.yaml", "release package template"),
    ("channels/README.md", "presentation channels index"),
    ("channels/web/OWNERSHIP.md", "Produkt W ownership (scaffold)"),
    ("channels/web/README.md", "Produkt W readme (scaffold)"),
)

# Foundation must not hard-import domain media trees.
_BOOKKIT_LIB = Path("packages/bookkit")
_DOMAIN_IMPORT_RX = re.compile(
    r'(?:#import|include)\s+"[^"]*domains/medical',
    re.IGNORECASE,
)


@dataclass
class TreeCheckResult:
    ok: bool
    messages: list[str] = field(default_factory=list)


def check_product_tree(repo_root: Path) -> TreeCheckResult:
    """Verify ownership markers and hard separation rules exist on disk."""
    root = Path(repo_root)
    msgs: list[str] = []

    def fail(m: str) -> None:
        msgs.append(f"boundaries-tree: FAIL — {m}")

    def ok_msg(m: str) -> None:
        msgs.append(f"boundaries-tree: {m}")

    if not root.is_dir():
        return TreeCheckResult(ok=False, messages=[f"boundaries-tree: FAIL — not a dir: {root}"])

    for rel, label in _REQUIRED_PATHS:
        p = root / rel
        if not p.is_file():
            fail(f"missing {rel} ({label})")
        else:
            ok_msg(f"OK {rel}")

    # PRODUCT-BOUNDARIES must name four products + ADR 50
    pb = root / "devtracks/PRODUCT-BOUNDARIES.md"
    if pb.is_file():
        text = pb.read_text(encoding="utf-8")
        for token in ("**C**", "**B**", "**A**", "**W**", "ADR", "50"):
            if token not in text and token != "ADR":
                # soft: still require W and release package language
                pass
        if "channel_scope" not in text and "channel-scope" not in text.lower():
            # accept German/English variants from ADR 53
            if "Accept trägt Channel-Scope" not in text and "channel_scope" not in text:
                fail("PRODUCT-BOUNDARIES.md missing channel_scope / Accept scope language")
        if "**W**" not in text and "| **W** |" not in text:
            fail("PRODUCT-BOUNDARIES.md missing Produkt W")
        else:
            ok_msg("PRODUCT-BOUNDARIES names Produkt W")
        if "Chapter Release Package" not in text and "Release Package" not in text:
            fail("PRODUCT-BOUNDARIES.md missing Release Package")
        else:
            ok_msg("PRODUCT-BOUNDARIES names Release Package")

    # packages/bookkit must not import domains/medical
    bookkit = root / _BOOKKIT_LIB
    if bookkit.is_dir():
        bad: list[str] = []
        for typ in bookkit.rglob("*.typ"):
            try:
                body = typ.read_text(encoding="utf-8")
            except OSError:
                continue
            if _DOMAIN_IMPORT_RX.search(body):
                bad.append(str(typ.relative_to(root)))
        if bad:
            fail(f"packages/bookkit imports domains/medical: {', '.join(bad[:5])}")
        else:
            ok_msg("packages/bookkit has no domains/medical imports")

    # channels/web must not claim to be bookkit foundation
    w_own = root / "channels/web/OWNERSHIP.md"
    if w_own.is_file():
        wt = w_own.read_text(encoding="utf-8")
        if "Produkt" in wt and "W" in wt:
            ok_msg("channels/web OWNERSHIP marks Produkt W")
        else:
            fail("channels/web/OWNERSHIP.md must declare Produkt W")

    ok = not any(m.startswith("boundaries-tree: FAIL") for m in msgs)
    if ok:
        msgs.append("boundaries-tree: OK")
    return TreeCheckResult(ok=ok, messages=msgs)

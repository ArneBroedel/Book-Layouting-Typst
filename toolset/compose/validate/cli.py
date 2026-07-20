#!/usr/bin/env python3
"""CLI for compose validate (Produkt A).

Preferred entry (from repo root):

    python3 toolset/compose/scripts/run_validate.py \\
      --typ path/to/chapter.typ \\
      --content path/to/content.md \\
      --catalog toolset/form-catalog/core/forms.yaml \\
      --accept path/to/accept.md \\
      [--genre-minima path/to/minima.yaml] \\
      [--root .] \\
      [--font-path fonts] \\
      [--exception-no-brief] \\
      [--profile smoke|production] \\
      [--whitelist-mode creative|strict] \\
      [--freeze path/to/freeze.md] \\
      [--skip-compile]

Or:

    python3 toolset/compose/validate/cli.py ...
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

# Allow running as script without installing a package
_VALIDATE_DIR = Path(__file__).resolve().parent
_COMPOSE_DIR = _VALIDATE_DIR.parent
if str(_COMPOSE_DIR) not in sys.path:
    sys.path.insert(0, str(_COMPOSE_DIR))

from validate.runner import ValidateConfig, report_to_json, run_validation  # noqa: E402


def _repo_root_guess() -> Path:
    # toolset/compose/validate → parents[3] = repo root
    return Path(__file__).resolve().parents[3]


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="compose-validate",
        description=(
            "Domain-agnostic compose validator: catalog inventory (creative default), "
            "minima, claims, compile, post-hoc intent, accept-gate. Fail-fast; no auto-heal. "
            "See toolset/compose/CREATIVE-COMPOSE.md."
        ),
    )
    p.add_argument("--typ", required=True, type=Path, help="Path to chapter .typ")
    p.add_argument("--content", type=Path, default=None, help="Path to content MD (claims)")
    p.add_argument(
        "--catalog",
        type=Path,
        default=None,
        help="Path to forms.yaml (default: toolset/form-catalog/core/forms.yaml under --root)",
    )
    p.add_argument(
        "--catalog-overlay",
        type=Path,
        default=None,
        help="Optional domain overlay forms.yaml (caller-supplied)",
    )
    p.add_argument("--accept", type=Path, default=None, help="Path to accept record MD")
    p.add_argument(
        "--genre-minima",
        type=Path,
        default=None,
        help="Path to genre minima YAML (caller-supplied; not hardcoded)",
    )
    p.add_argument(
        "--root",
        type=Path,
        default=None,
        help="Typst project root (default: cwd or repo root guess)",
    )
    p.add_argument(
        "--font-path",
        type=Path,
        default=Path("fonts"),
        help="Font path for typst (default: fonts, relative to root)",
    )
    p.add_argument(
        "--exception-no-brief",
        action="store_true",
        help="EXCEPTION_NO_BRIEF: skip accept authorization (smoke only)",
    )
    p.add_argument(
        "--profile",
        choices=("smoke", "production"),
        default="smoke",
        help=(
            "smoke: freeze not required (default). "
            "production: hard-require Human freeze record + content_revision pin match"
        ),
    )
    p.add_argument(
        "--freeze",
        type=Path,
        default=None,
        help="Path to content freeze record MD (required for --profile production)",
    )
    p.add_argument(
        "--skip-compile",
        action="store_true",
        help="Skip typst compile (unit tests / no typst)",
    )
    p.add_argument(
        "--out-pdf",
        type=Path,
        default=None,
        help="Optional PDF output path for compile check",
    )
    p.add_argument(
        "--posthoc-out",
        type=Path,
        default=None,
        help="Write post-hoc intent JSON/MD to this path",
    )
    p.add_argument(
        "--json",
        action="store_true",
        help="Also print machine-readable JSON report to stdout after text",
    )
    p.add_argument(
        "--body-hard-fail",
        action="store_true",
        help="Treat extreme body ratio as hard fail (default: warn only)",
    )
    p.add_argument(
        "--whitelist-mode",
        choices=("creative", "strict"),
        default="creative",
        help=(
            "creative (default): catalog is advisory — planned/custom form-like "
            "calls warn only. strict: hard-fail on planned/unknown (legacy audit)."
        ),
    )
    return p


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    root = args.root
    if root is None:
        cwd = Path.cwd()
        # prefer cwd if it looks like the studio root
        if (cwd / "toolset" / "form-catalog" / "core" / "forms.yaml").is_file():
            root = cwd
        else:
            root = _repo_root_guess()
    root = root.resolve()

    catalog = args.catalog
    if catalog is None:
        catalog = root / "toolset" / "form-catalog" / "core" / "forms.yaml"

    cfg = ValidateConfig(
        typ=args.typ.resolve() if args.typ.is_absolute() else (Path.cwd() / args.typ).resolve(),
        content=(
            args.content.resolve()
            if args.content and args.content.is_absolute()
            else (Path.cwd() / args.content).resolve()
            if args.content
            else None
        ),
        catalog=catalog.resolve() if not catalog.is_absolute() else catalog,
        accept=(
            args.accept.resolve()
            if args.accept and args.accept.is_absolute()
            else (Path.cwd() / args.accept).resolve()
            if args.accept
            else None
        ),
        freeze=(
            args.freeze.resolve()
            if args.freeze and args.freeze.is_absolute()
            else (Path.cwd() / args.freeze).resolve()
            if args.freeze
            else None
        ),
        genre_minima=(
            args.genre_minima.resolve()
            if args.genre_minima and args.genre_minima.is_absolute()
            else (Path.cwd() / args.genre_minima).resolve()
            if args.genre_minima
            else None
        ),
        catalog_overlay=(
            args.catalog_overlay.resolve()
            if args.catalog_overlay and args.catalog_overlay.is_absolute()
            else (Path.cwd() / args.catalog_overlay).resolve()
            if args.catalog_overlay
            else None
        ),
        root=root,
        font_path=args.font_path,
        exception_no_brief=args.exception_no_brief,
        skip_compile=args.skip_compile,
        out_pdf=args.out_pdf,
        posthoc_out=args.posthoc_out,
        body_hard_fail=args.body_hard_fail,
        profile=args.profile,
        whitelist_mode=args.whitelist_mode,
    )

    report = run_validation(cfg)
    sys.stdout.write(report.render_text())
    if args.json:
        sys.stdout.write(report_to_json(report))
    return 0 if report.ok else 1


if __name__ == "__main__":
    raise SystemExit(main())

"""CLI entry for bookkit boundaries subcommands."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

from .release_package import validate_release_file
from .tree_check import check_product_tree


def _repo_root_from_here() -> Path:
    # toolset/boundaries/cli.py → repo root is parents[2]
    return Path(__file__).resolve().parents[2]


def _add_root(sp: argparse.ArgumentParser) -> None:
    sp.add_argument(
        "--root",
        type=Path,
        default=None,
        help="Monorepo root (default: detect from this package)",
    )


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="bookkit boundaries",
        description=(
            "Check product boundaries (A/B/C/W tree ownership) and "
            "chapter release packages (C freeze + B accept → A|W)."
        ),
    )
    _add_root(p)
    sub = p.add_subparsers(dest="cmd", required=True)

    pt = sub.add_parser(
        "check-tree",
        help="Verify OWNERSHIP markers, contracts/, channels/web scaffold, foundation isolation",
    )
    _add_root(pt)

    pr = sub.add_parser(
        "check-release",
        help="Validate a chapter release package YAML/JSON against the hard contract",
    )
    pr.add_argument("path", type=Path, help="Path to release package file")
    pr.add_argument(
        "--check-paths",
        action="store_true",
        help="Also require accept_paths and asset path fields to exist on disk",
    )
    _add_root(pr)

    pc = sub.add_parser(
        "check",
        help="Run check-tree; optionally also check-release",
    )
    pc.add_argument(
        "--release",
        type=Path,
        default=None,
        help="Optional release package path",
    )
    pc.add_argument(
        "--check-paths",
        action="store_true",
        help="With --release: require paths exist",
    )
    _add_root(pc)
    return p


def main(argv: list[str] | None = None) -> int:
    argv = list(sys.argv[1:] if argv is None else argv)
    parser = build_parser()
    args = parser.parse_args(argv)
    root_arg = getattr(args, "root", None)
    root: Path = (root_arg or _repo_root_from_here()).resolve()

    if args.cmd == "check-tree":
        result = check_product_tree(root)
        for m in result.messages:
            print(m)
        return 0 if result.ok else 1

    if args.cmd == "check-release":
        result = validate_release_file(
            args.path,
            check_paths=bool(args.check_paths),
            repo_root=root,
        )
        for m in result.messages:
            print(m)
        return 0 if result.ok else 1

    if args.cmd == "check":
        exit_code = 0
        tree = check_product_tree(root)
        for m in tree.messages:
            print(m)
        if not tree.ok:
            exit_code = 1
        if args.release is not None:
            rel = validate_release_file(
                args.release,
                check_paths=bool(args.check_paths),
                repo_root=root,
            )
            for m in rel.messages:
                print(m)
            if not rel.ok:
                exit_code = 1
        return exit_code

    parser.error(f"unknown command {args.cmd}")
    return 2


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Unit tests for shipped boundaries engine (real package entry points).

Runs against contracts/fixtures and the live monorepo tree — no hard-coded
pass/fail strings that re-implement validation rules.
"""

from __future__ import annotations

import subprocess
import sys
import unittest
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
TOOLSET = REPO / "toolset"
FIXTURES = REPO / "contracts" / "fixtures"
BOOKKIT = REPO / "scripts" / "bookkit"

if str(TOOLSET) not in sys.path:
    sys.path.insert(0, str(TOOLSET))

from boundaries.cli import main as boundaries_main  # noqa: E402
from boundaries.release_package import (  # noqa: E402
    is_valid_content_revision,
    load_release_package,
    validate_release_file,
    validate_release_package,
)
from boundaries.tree_check import check_product_tree  # noqa: E402


class TestContentRevision(unittest.TestCase):
    def test_valid_forms(self):
        self.assertTrue(is_valid_content_revision("git:abcdef0"))
        self.assertTrue(
            is_valid_content_revision(
                "sha256:0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
            )
        )

    def test_invalid_forms(self):
        self.assertFalse(is_valid_content_revision("main"))
        self.assertFalse(is_valid_content_revision("git:xyz"))
        self.assertFalse(is_valid_content_revision(""))
        self.assertFalse(is_valid_content_revision(None))


class TestReleaseFixtures(unittest.TestCase):
    """Drive the real validator on every committed fixture."""

    def test_pass_fixtures(self):
        for name in ("pass_print_minimal.yaml", "pass_both_channels.yaml"):
            path = FIXTURES / name
            self.assertTrue(path.is_file(), f"missing fixture {path}")
            result = validate_release_file(path, check_paths=False, repo_root=REPO)
            self.assertTrue(
                result.ok,
                f"{name} should pass: {result.messages}",
            )

    def test_fail_fixtures(self):
        cases = {
            "fail_bad_revision.yaml": "content_revision",
            "fail_scope_channel_mismatch.yaml": "channels.web",
            "fail_missing_chapter_id.yaml": "chapter_id",
        }
        for name, needle in cases.items():
            path = FIXTURES / name
            self.assertTrue(path.is_file(), f"missing fixture {path}")
            result = validate_release_file(path, check_paths=False, repo_root=REPO)
            self.assertFalse(result.ok, f"{name} should fail")
            blob = "\n".join(result.messages)
            self.assertIn(
                "FAIL",
                blob,
                f"{name} messages should include FAIL: {blob}",
            )
            self.assertIn(
                needle,
                blob,
                f"{name} should mention {needle}: {blob}",
            )

    def test_load_then_validate_roundtrip(self):
        data = load_release_package(FIXTURES / "pass_print_minimal.yaml")
        self.assertEqual(data.get("schema_version"), "1")
        self.assertEqual(data.get("channel_scope"), "print")
        result = validate_release_package(data)
        self.assertTrue(result.ok)

    def test_check_paths_accepts_existing_fixture_paths(self):
        # pass_print_minimal lists contracts/fixtures/README.md
        result = validate_release_file(
            FIXTURES / "pass_print_minimal.yaml",
            check_paths=True,
            repo_root=REPO,
        )
        self.assertTrue(result.ok, result.messages)

    def test_check_paths_fails_missing_asset_path(self):
        data = load_release_package(FIXTURES / "pass_both_channels.yaml")
        # fixture points at non-existent domain path — with check_paths must fail
        result = validate_release_package(
            data, check_paths=True, repo_root=REPO
        )
        self.assertFalse(result.ok)
        self.assertTrue(
            any("path not found" in m for m in result.messages),
            result.messages,
        )


class TestTreeCheck(unittest.TestCase):
    def test_live_monorepo_tree(self):
        result = check_product_tree(REPO)
        self.assertTrue(result.ok, result.messages)
        # structural markers must be reported present
        joined = "\n".join(result.messages)
        self.assertIn("contracts/schemas/chapter-release.schema.json", joined)
        self.assertIn("channels/web/OWNERSHIP.md", joined)
        self.assertIn("packages/bookkit has no domains/medical imports", joined)


class TestCliEntry(unittest.TestCase):
    """Call the shipped CLI module (not a reimplementation)."""

    def test_cli_check_tree_exit_0(self):
        code = boundaries_main(["check-tree", "--root", str(REPO)])
        self.assertEqual(code, 0)

    def test_cli_check_release_pass(self):
        code = boundaries_main(
            [
                "check-release",
                str(FIXTURES / "pass_print_minimal.yaml"),
                "--root",
                str(REPO),
            ]
        )
        self.assertEqual(code, 0)

    def test_cli_check_release_fail(self):
        code = boundaries_main(
            [
                "check-release",
                str(FIXTURES / "fail_bad_revision.yaml"),
                "--root",
                str(REPO),
            ]
        )
        self.assertEqual(code, 1)

    def test_cli_check_combined(self):
        code = boundaries_main(
            [
                "check",
                "--root",
                str(REPO),
                "--release",
                str(FIXTURES / "pass_both_channels.yaml"),
            ]
        )
        self.assertEqual(code, 0)


class TestBookkitShellEntry(unittest.TestCase):
    """Real user path: ./scripts/bookkit boundaries …"""

    def test_bookkit_boundaries_help(self):
        proc = subprocess.run(
            [str(BOOKKIT), "boundaries", "--help"],
            cwd=REPO,
            capture_output=True,
            text=True,
            check=False,
        )
        self.assertEqual(proc.returncode, 0, proc.stderr)
        self.assertIn("check-tree", proc.stdout + proc.stderr)

    def test_bookkit_boundaries_check_tree(self):
        proc = subprocess.run(
            [str(BOOKKIT), "boundaries", "check-tree", "--root", str(REPO)],
            cwd=REPO,
            capture_output=True,
            text=True,
            check=False,
        )
        self.assertEqual(proc.returncode, 0, proc.stdout + proc.stderr)
        self.assertIn("boundaries-tree: OK", proc.stdout)

    def test_bookkit_boundaries_check_release_fail_fixture(self):
        proc = subprocess.run(
            [
                str(BOOKKIT),
                "boundaries",
                "check-release",
                str(FIXTURES / "fail_scope_channel_mismatch.yaml"),
            ],
            cwd=REPO,
            capture_output=True,
            text=True,
            check=False,
        )
        self.assertNotEqual(proc.returncode, 0)
        self.assertIn("FAIL", proc.stdout)


if __name__ == "__main__":
    unittest.main()

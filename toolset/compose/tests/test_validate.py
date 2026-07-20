#!/usr/bin/env python3
"""stdlib unittest for toolset/compose/validate — no live Kursbuch path."""

from __future__ import annotations

import sys
import unittest
from pathlib import Path

# toolset/compose on path
_COMPOSE = Path(__file__).resolve().parents[1]
if str(_COMPOSE) not in sys.path:
    sys.path.insert(0, str(_COMPOSE))

from validate.accept_gate import check_accept, is_authorized  # noqa: E402
from validate.catalog import load_catalog  # noqa: E402
from validate.claims import check_claims, extract_claims_from_content, normalize_text  # noqa: E402
from validate.freeze_gate import check_freeze, is_valid_revision, parse_revision  # noqa: E402
from validate.minima import check_minima, load_minima  # noqa: E402
from validate.posthoc import build_posthoc  # noqa: E402
from validate.runner import ValidateConfig, run_validation  # noqa: E402
from validate.whitelist import check_whitelist, extract_calls  # noqa: E402

REPO = Path(__file__).resolve().parents[3]
FIXTURES = _COMPOSE / "fixtures"
CATALOG = REPO / "toolset" / "form-catalog" / "core" / "forms.yaml"
DOMAIN_MINIMA = REPO / "domains" / "medical" / "recipes" / "notfall-karte.minima.yaml"


def _cfg(
    fixture: str,
    *,
    skip_compile: bool = True,
    exception_no_brief: bool = False,
    accept: str | None = "accept.md",
    freeze: str | None = None,
    genre_minima: Path | None = None,
    content: str | None = "content.md",
    profile: str = "smoke",
    whitelist_mode: str = "creative",
) -> ValidateConfig:
    base = FIXTURES / fixture
    return ValidateConfig(
        typ=base / "chapter.typ",
        content=(base / content) if content else None,
        catalog=CATALOG,
        accept=(base / accept) if accept else None,
        freeze=(base / freeze) if freeze else None,
        genre_minima=genre_minima,
        root=REPO,
        font_path=REPO / "fonts",
        exception_no_brief=exception_no_brief,
        skip_compile=skip_compile,
        profile=profile,
        whitelist_mode=whitelist_mode,  # type: ignore[arg-type]
    )


class TestCatalog(unittest.TestCase):
    def test_load_catalog_version_and_stable(self):
        cat = load_catalog(CATALOG)
        self.assertTrue(cat.version)
        self.assertIn("chapter-opener", cat.stable_ids)
        self.assertIn("cave", cat.stable_ids)
        self.assertIn("decision-table", cat.planned_ids)
        self.assertEqual(cat.by_function["chapter-opener"].status, "stable")


class TestWhitelist(unittest.TestCase):
    def test_pass_minimal_forms(self):
        cat = load_catalog(CATALOG)
        src = (FIXTURES / "pass_minimal" / "chapter.typ").read_text(encoding="utf-8")
        wl = check_whitelist(src, cat, mode="creative")
        self.assertTrue(wl.ok, wl.messages)
        for need in ("chapter-opener", "cave", "memo", "callout", "styled-table"):
            self.assertIn(need, wl.forms_ordered)

    def test_unknown_and_planned_advisory_in_creative(self):
        """Default creative mode: planned/custom warn but ok=True."""
        cat = load_catalog(CATALOG)
        src = (FIXTURES / "fail_unknown_form" / "chapter.typ").read_text(encoding="utf-8")
        wl = check_whitelist(src, cat, mode="creative")
        self.assertTrue(wl.ok)
        self.assertTrue(wl.advisory)
        self.assertIn("decision-table", wl.planned_used)
        self.assertIn("mystery-widget", wl.unknown)

    def test_unknown_and_planned_fail_in_strict(self):
        cat = load_catalog(CATALOG)
        src = (FIXTURES / "fail_unknown_form" / "chapter.typ").read_text(encoding="utf-8")
        wl = check_whitelist(src, cat, mode="strict")
        self.assertFalse(wl.ok)
        self.assertIn("decision-table", wl.planned_used)
        self.assertIn("mystery-widget", wl.unknown)

    def test_extract_calls_ignores_comments(self):
        src = "// #fake-form[\n#cave[x]\n"
        calls = extract_calls(src)
        self.assertEqual(calls, ["cave"])


class TestMinima(unittest.TestCase):
    def test_load_domain_minima_via_path(self):
        # Engine must accept domain path without hardcoding it
        data = load_minima(DOMAIN_MINIMA)
        self.assertEqual(data.get("genre"), "notfall-karte")
        self.assertGreaterEqual(int(data.get("distinct_forms_min") or 0), 1)

    def test_pass_minimal_meets_fixture_minima(self):
        cat = load_catalog(CATALOG)
        src = (FIXTURES / "pass_minimal" / "chapter.typ").read_text(encoding="utf-8")
        wl = check_whitelist(src, cat)
        minima = load_minima(FIXTURES / "pass_minimal" / "genre-minima.yaml")
        mn = check_minima(wl.forms_ordered, minima)
        self.assertTrue(mn.ok, mn.messages)

    def test_sole_table_fails(self):
        minima = {
            "distinct_forms_min": 1,
            "forbidden_sole_forms": ["styled-table"],
            "forbid_only_table_body": True,
            "early_gatekeeper_forms": [],
        }
        mn = check_minima(["styled-table"], minima)
        self.assertFalse(mn.ok)

    def test_gatekeeper_early_window(self):
        minima = {
            "distinct_forms_min": 2,
            "early_gatekeeper_forms": ["cave", "memo"],
            "early_window": {"n": 2},
        }
        # gatekeeper only at position 3 → fail
        mn = check_minima(["chapter-opener", "callout", "cave"], minima)
        self.assertFalse(mn.ok)
        mn2 = check_minima(["chapter-opener", "cave", "callout"], minima)
        self.assertTrue(mn2.ok, mn2.messages)


class TestClaims(unittest.TestCase):
    def test_extract_and_match(self):
        content = (FIXTURES / "pass_minimal" / "content.md").read_text(encoding="utf-8")
        typ = (FIXTURES / "pass_minimal" / "chapter.typ").read_text(encoding="utf-8")
        claims = extract_claims_from_content(content)
        self.assertGreaterEqual(len(claims), 2)
        cr = check_claims(content, typ)
        self.assertTrue(cr.ok, cr.messages)

    def test_missing_claims_fail(self):
        content = (FIXTURES / "fail_claims" / "content.md").read_text(encoding="utf-8")
        typ = (FIXTURES / "fail_claims" / "chapter.typ").read_text(encoding="utf-8")
        cr = check_claims(content, typ)
        self.assertFalse(cr.ok)
        self.assertEqual(len(cr.missing), 2)

    def test_no_section_soft_pass(self):
        cr = check_claims("# Title\n\nNo claims here.\n", "#cave[x]")
        self.assertTrue(cr.ok)
        self.assertTrue(cr.skipped)

    def test_normalize(self):
        self.assertEqual(normalize_text("  Foo   BAR. "), "foo bar")


class TestAccept(unittest.TestCase):
    def test_authorized_yes(self):
        text = (FIXTURES / "pass_minimal" / "accept.md").read_text(encoding="utf-8")
        self.assertTrue(is_authorized(text))
        r = check_accept(FIXTURES / "pass_minimal" / "accept.md")
        self.assertTrue(r.ok)

    def test_not_authorized(self):
        r = check_accept(FIXTURES / "fail_no_accept" / "accept.md")
        self.assertFalse(r.ok)

    def test_exception_no_brief(self):
        r = check_accept(None, exception_no_brief=True)
        self.assertTrue(r.ok)
        self.assertIn("EXCEPTION_NO_BRIEF", r.messages[0])

    def test_missing_accept_fails(self):
        r = check_accept(None, exception_no_brief=False)
        self.assertFalse(r.ok)


class TestPosthoc(unittest.TestCase):
    def test_build(self):
        ph = build_posthoc(
            ["chapter-opener", "cave", "cave", "memo"],
            ["chapter-opener", "cave", "memo"],
        )
        self.assertEqual(ph.forms_counts["cave"], 2)
        self.assertIn("chapter-opener", ph.as_dict()["forms_ordered"])
        self.assertIn("Post-hoc", ph.as_markdown())


class TestFreezeGate(unittest.TestCase):
    def test_valid_revision_forms(self):
        self.assertTrue(is_valid_revision("git:a1b2c3d"))
        self.assertTrue(
            is_valid_revision(
                "sha256:ad9ba29a2e3f99b1519a3ba859bb8ae634c9daeeda59c3493cedd49d72166b99"
            )
        )
        self.assertFalse(is_valid_revision("2026-07-20"))
        self.assertFalse(is_valid_revision("latest"))

    def test_smoke_skips(self):
        r = check_freeze(profile="smoke", freeze_path=None, typ_source="// no pin")
        self.assertTrue(r.ok)
        self.assertTrue(r.skipped)

    def test_production_pass_fixture(self):
        base = FIXTURES / "pass_freeze_production"
        typ = (base / "chapter.typ").read_text(encoding="utf-8")
        r = check_freeze(
            profile="production",
            freeze_path=base / "freeze.md",
            typ_source=typ,
            content_path=base / "content.md",
        )
        self.assertTrue(r.ok, r.messages)
        self.assertEqual(
            parse_revision(typ),
            parse_revision((base / "freeze.md").read_text(encoding="utf-8")),
        )

    def test_production_requires_freeze(self):
        r = check_freeze(profile="production", freeze_path=None, typ_source="// x")
        self.assertFalse(r.ok)
        self.assertTrue(any("next_checkpoint: H1" in m for m in r.messages))


class TestRunnerFixtures(unittest.TestCase):
    def test_pass_minimal_green(self):
        report = run_validation(
            _cfg(
                "pass_minimal",
                skip_compile=True,
                genre_minima=FIXTURES / "pass_minimal" / "genre-minima.yaml",
            )
        )
        self.assertTrue(report.ok, report.render_text())
        statuses = {c.name: c.status for c in report.checks}
        self.assertEqual(statuses["whitelist"], "pass")
        self.assertEqual(statuses["accept"], "pass")
        self.assertEqual(statuses["posthoc"], "pass")
        self.assertEqual(statuses["claims"], "pass")
        self.assertEqual(statuses["minima"], "pass")
        self.assertEqual(statuses["freeze"], "skip")

    def test_pass_freeze_production_green(self):
        report = run_validation(
            _cfg(
                "pass_freeze_production",
                skip_compile=True,
                freeze="freeze.md",
                profile="production",
            )
        )
        self.assertTrue(report.ok, report.render_text())
        statuses = {c.name: c.status for c in report.checks}
        self.assertEqual(statuses["freeze"], "pass")

    def test_fail_freeze_production_red(self):
        report = run_validation(
            _cfg("fail_freeze_production", skip_compile=True, profile="production")
        )
        self.assertFalse(report.ok)
        fr = next(c for c in report.checks if c.name == "freeze")
        self.assertEqual(fr.status, "fail")

    def test_unknown_form_advisory_green_creative(self):
        """Default creative mode: planned/custom inventory is warn, not fail."""
        report = run_validation(
            _cfg("fail_unknown_form", skip_compile=True, whitelist_mode="creative")
        )
        self.assertTrue(report.ok, report.render_text())
        wl = next(c for c in report.checks if c.name == "whitelist")
        self.assertEqual(wl.status, "warn")

    def test_unknown_form_red_strict(self):
        report = run_validation(
            _cfg("fail_unknown_form", skip_compile=True, whitelist_mode="strict")
        )
        self.assertFalse(report.ok)
        wl = next(c for c in report.checks if c.name == "whitelist")
        self.assertEqual(wl.status, "fail")

    def test_fail_no_accept_red(self):
        report = run_validation(_cfg("fail_no_accept", skip_compile=True))
        self.assertFalse(report.ok)
        acc = next(c for c in report.checks if c.name == "accept")
        self.assertEqual(acc.status, "fail")

    def test_fail_no_accept_exception_green(self):
        report = run_validation(
            _cfg("fail_no_accept", skip_compile=True, exception_no_brief=True)
        )
        # whitelist should pass; accept exception
        acc = next(c for c in report.checks if c.name == "accept")
        self.assertEqual(acc.status, "pass")
        self.assertTrue(
            report.ok or any(c.status == "fail" and c.name != "accept" for c in report.checks)
            or report.ok
        )
        # With exception, accept is pass; fixture has only stable forms → full ok
        self.assertTrue(report.ok, report.render_text())

    def test_fail_claims_red(self):
        report = run_validation(_cfg("fail_claims", skip_compile=True))
        self.assertFalse(report.ok)
        cl = next(c for c in report.checks if c.name == "claims")
        self.assertEqual(cl.status, "fail")

    def test_no_kursbuch_hardcode_in_engine(self):
        """Engine sources must not embed absolute Kursbuch paths."""
        validate_dir = _COMPOSE / "validate"
        for path in validate_dir.glob("*.py"):
            text = path.read_text(encoding="utf-8")
            self.assertNotIn("Kursbuch5", text, msg=path.name)
            self.assertNotIn("/home/arneb/repos/company/Kursbuch", text, msg=path.name)


@unittest.skipUnless(
    (REPO / "fonts").is_dir() and __import__("shutil").which("typst"),
    "typst + fonts required for integration compile",
)
class TestCompileIntegration(unittest.TestCase):
    def test_pass_minimal_compiles(self):
        report = run_validation(
            _cfg(
                "pass_minimal",
                skip_compile=False,
                genre_minima=FIXTURES / "pass_minimal" / "genre-minima.yaml",
            )
        )
        self.assertTrue(report.ok, report.render_text())
        comp = next(c for c in report.checks if c.name == "compile")
        self.assertEqual(comp.status, "pass")


if __name__ == "__main__":
    unittest.main()

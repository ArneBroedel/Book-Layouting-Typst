"""Orchestrate validator checks; exit code 0 = all required pass, 1 = failure."""

from __future__ import annotations

import json
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

from .accept_gate import check_accept
from .body import check_body
from .catalog import Catalog, load_catalog, merge_overlay
from .claims import check_claims, load_content
from .compile_check import compile_typ
from .minima import check_minima, load_minima
from .posthoc import build_posthoc, write_posthoc
from .whitelist import check_whitelist


@dataclass
class CheckItem:
    name: str
    status: str  # pass | fail | warn | skip
    messages: list[str] = field(default_factory=list)

    def as_dict(self) -> dict[str, Any]:
        return {"name": self.name, "status": self.status, "messages": list(self.messages)}


@dataclass
class ValidationReport:
    ok: bool
    checks: list[CheckItem] = field(default_factory=list)
    catalog_version: str | None = None
    forms_ordered: list[str] = field(default_factory=list)
    posthoc: dict[str, Any] = field(default_factory=dict)
    meta: dict[str, Any] = field(default_factory=dict)

    def add(self, name: str, status: str, messages: list[str] | str) -> None:
        if isinstance(messages, str):
            messages = [messages]
        self.checks.append(CheckItem(name=name, status=status, messages=list(messages)))

    def render_text(self) -> str:
        lines = ["=== compose validate report ==="]
        if self.catalog_version:
            lines.append(f"catalog_version: {self.catalog_version}")
        for c in self.checks:
            mark = {"pass": "PASS", "fail": "FAIL", "warn": "WARN", "skip": "SKIP"}.get(
                c.status, c.status.upper()
            )
            lines.append(f"[{mark}] {c.name}")
            for m in c.messages:
                for sub in m.splitlines() or [m]:
                    lines.append(f"       {sub}")
        if self.forms_ordered:
            lines.append("forms_ordered: " + ", ".join(self.forms_ordered))
        lines.append(f"result: {'OK' if self.ok else 'FAIL'}")
        return "\n".join(lines) + "\n"

    def as_dict(self) -> dict[str, Any]:
        return {
            "ok": self.ok,
            "catalog_version": self.catalog_version,
            "forms_ordered": list(self.forms_ordered),
            "posthoc": dict(self.posthoc),
            "checks": [c.as_dict() for c in self.checks],
            "meta": dict(self.meta),
        }


@dataclass
class ValidateConfig:
    typ: Path
    content: Path | None = None
    catalog: Path | None = None
    accept: Path | None = None
    genre_minima: Path | None = None
    catalog_overlay: Path | None = None
    root: Path = field(default_factory=lambda: Path("."))
    font_path: Path = field(default_factory=lambda: Path("fonts"))
    exception_no_brief: bool = False
    skip_compile: bool = False
    out_pdf: Path | None = None
    posthoc_out: Path | None = None
    body_hard_fail: bool = False


def run_validation(cfg: ValidateConfig) -> ValidationReport:
    report = ValidationReport(ok=True)
    report.meta = {
        "typ": str(cfg.typ),
        "content": str(cfg.content) if cfg.content else None,
        "catalog": str(cfg.catalog) if cfg.catalog else None,
        "accept": str(cfg.accept) if cfg.accept else None,
        "genre_minima": str(cfg.genre_minima) if cfg.genre_minima else None,
        "exception_no_brief": cfg.exception_no_brief,
        "skip_compile": cfg.skip_compile,
    }

    typ_path = Path(cfg.typ)
    if not typ_path.is_file():
        report.ok = False
        report.add("input", "fail", f"typ not found: {typ_path}")
        return report

    typ_source = typ_path.read_text(encoding="utf-8")

    # ── 1. catalog load ─────────────────────────────────────────
    if cfg.catalog is None:
        report.ok = False
        report.add("catalog", "fail", "catalog path required (--catalog)")
        return report
    try:
        catalog: Catalog = load_catalog(cfg.catalog)
        if cfg.catalog_overlay:
            catalog = merge_overlay(catalog, cfg.catalog_overlay)
        report.catalog_version = catalog.version
        report.add(
            "catalog",
            "pass",
            f"loaded {catalog.source} version={catalog.version} "
            f"stable={len(catalog.stable_ids)} planned={len(catalog.planned_ids)}",
        )
    except Exception as e:
        report.ok = False
        report.add("catalog", "fail", f"catalog load error: {e}")
        return report

    # ── 2. whitelist ────────────────────────────────────────────
    wl = check_whitelist(typ_source, catalog)
    report.forms_ordered = list(wl.forms_ordered)
    if wl.ok:
        report.add("whitelist", "pass", wl.messages)
    else:
        report.ok = False
        report.add("whitelist", "fail", wl.messages)

    # ── 3. genre minima (optional) ──────────────────────────────
    minima_data = None
    if cfg.genre_minima:
        try:
            minima_data = load_minima(cfg.genre_minima)
            mn = check_minima(wl.forms_ordered, minima_data)
            if mn.ok:
                report.add("minima", "pass" if not mn.skipped else "skip", mn.messages)
            else:
                report.ok = False
                report.add("minima", "fail", mn.messages)
        except Exception as e:
            report.ok = False
            report.add("minima", "fail", f"minima load/check error: {e}")
    else:
        report.add("minima", "skip", "genre minima: skipped (no --genre-minima)")

    # ── 4. claims strict ────────────────────────────────────────
    try:
        content = load_content(cfg.content) if cfg.content else None
    except Exception as e:
        report.ok = False
        report.add("claims", "fail", f"content load error: {e}")
        content = None
    else:
        cr = check_claims(content, typ_source)
        if cr.ok:
            report.add("claims", "skip" if cr.skipped else "pass", cr.messages)
        else:
            report.ok = False
            report.add("claims", "fail", cr.messages)

    # ── 5. body soft ────────────────────────────────────────────
    br = check_body(content if cfg.content else None, typ_source, hard_fail=cfg.body_hard_fail)
    if not br.ok:
        report.ok = False
        report.add("body", "fail", br.messages)
    elif br.warn:
        report.add("body", "warn", br.messages)
    else:
        report.add("body", "pass" if cfg.content else "skip", br.messages)

    # ── 6. compile ──────────────────────────────────────────────
    comp = compile_typ(
        typ_path,
        root=cfg.root,
        font_path=cfg.font_path,
        out_pdf=cfg.out_pdf,
        skip=cfg.skip_compile,
    )
    if comp.skipped:
        report.add("compile", "skip", comp.messages)
    elif comp.ok:
        report.add("compile", "pass", comp.messages)
    else:
        report.ok = False
        report.add("compile", "fail", comp.messages)

    # ── 7. post-hoc intent ──────────────────────────────────────
    ph = build_posthoc(wl.forms_found, wl.forms_ordered)
    report.posthoc = ph.as_dict()
    written = write_posthoc(ph, cfg.posthoc_out) if cfg.posthoc_out else None
    msgs = list(ph.messages)
    if written:
        msgs.append(f"wrote {written}")
    report.add("posthoc", "pass", msgs)

    # ── 8. accept-gate ──────────────────────────────────────────
    ar = check_accept(cfg.accept, exception_no_brief=cfg.exception_no_brief)
    if ar.ok:
        report.add("accept", "pass", ar.messages)
    else:
        report.ok = False
        report.add("accept", "fail", ar.messages)

    return report


def report_to_json(report: ValidationReport) -> str:
    return json.dumps(report.as_dict(), indent=2, ensure_ascii=False) + "\n"

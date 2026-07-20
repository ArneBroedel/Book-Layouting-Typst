"""Compose validator (Produkt A) — domain-agnostic, fail-fast, no auto-heal."""

from .runner import ValidationReport, run_validation

__all__ = ["ValidationReport", "run_validation"]
__version__ = "0.1.0"

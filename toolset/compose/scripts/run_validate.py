#!/usr/bin/env python3
"""Thin entry: python3 toolset/compose/scripts/run_validate.py ...

Inserts toolset/compose on sys.path so `validate` imports resolve without
installing a package. Repo root need not be a Python package.
"""

from __future__ import annotations

import sys
from pathlib import Path

_COMPOSE = Path(__file__).resolve().parents[1]  # toolset/compose
if str(_COMPOSE) not in sys.path:
    sys.path.insert(0, str(_COMPOSE))

from validate.cli import main  # noqa: E402

if __name__ == "__main__":
    raise SystemExit(main())

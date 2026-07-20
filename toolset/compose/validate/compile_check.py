"""Subprocess typst compile with reproducible flags."""

from __future__ import annotations

import shutil
import subprocess
import tempfile
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class CompileResult:
    ok: bool
    skipped: bool = False
    messages: list[str] = field(default_factory=list)
    returncode: int | None = None
    stdout: str = ""
    stderr: str = ""
    out_pdf: str | None = None


def typst_available() -> bool:
    return shutil.which("typst") is not None


def compile_typ(
    typ_path: Path | str,
    *,
    root: Path | str,
    font_path: Path | str = "fonts",
    out_pdf: Path | str | None = None,
    skip: bool = False,
    timeout: int = 120,
) -> CompileResult:
    """
    typst compile --root ROOT --ignore-system-fonts --font-path FONTPATH typ out.pdf
    """
    if skip:
        return CompileResult(ok=True, skipped=True, messages=["compile: skipped (--skip-compile)"])

    if not typst_available():
        return CompileResult(
            ok=True,
            skipped=True,
            messages=["compile: skipped (typst not on PATH)"],
        )

    typ = Path(typ_path).resolve()
    root_p = Path(root).resolve()
    font_p = Path(font_path)
    if not font_p.is_absolute():
        font_p = (root_p / font_p).resolve()

    if not typ.is_file():
        return CompileResult(ok=False, messages=[f"compile: typ not found: {typ}"])

    tmp_dir = None
    if out_pdf is None:
        tmp_dir = tempfile.mkdtemp(prefix="compose-validate-")
        out = Path(tmp_dir) / "out.pdf"
    else:
        out = Path(out_pdf)
        out.parent.mkdir(parents=True, exist_ok=True)

    cmd = [
        "typst",
        "compile",
        "--root",
        str(root_p),
        "--ignore-system-fonts",
        "--font-path",
        str(font_p),
        str(typ),
        str(out),
    ]
    try:
        proc = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=timeout,
            cwd=str(root_p),
        )
    except subprocess.TimeoutExpired:
        return CompileResult(
            ok=False,
            messages=[f"compile: timeout after {timeout}s", " ".join(cmd)],
            returncode=None,
        )
    except OSError as e:
        return CompileResult(ok=False, messages=[f"compile: failed to spawn typst: {e}"])

    stdout = proc.stdout or ""
    stderr = proc.stderr or ""
    if proc.returncode != 0:
        tail = (stderr or stdout).strip()
        if len(tail) > 2000:
            tail = tail[-2000:]
        return CompileResult(
            ok=False,
            messages=[
                f"compile: typst exit {proc.returncode}",
                "cmd: " + " ".join(cmd),
                tail,
            ],
            returncode=proc.returncode,
            stdout=stdout,
            stderr=stderr,
            out_pdf=str(out),
        )

    return CompileResult(
        ok=True,
        messages=[f"compile: ok → {out}"],
        returncode=0,
        stdout=stdout,
        stderr=stderr,
        out_pdf=str(out),
    )

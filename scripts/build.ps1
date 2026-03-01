param(
    [ValidateSet("fast", "watch", "ua", "test", "test-watch")]
    [string]$Mode = "fast"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $root

function Resolve-TypstExecutable {
    $direct = Get-Command typst -ErrorAction SilentlyContinue
    if ($direct) {
        return $direct.Source
    }

    $base = Join-Path $env:LOCALAPPDATA "Microsoft\WinGet\Packages"
    if (Test-Path $base) {
        $candidate = Get-ChildItem -Path $base -Filter "typst.exe" -File -Recurse -ErrorAction SilentlyContinue |
        Where-Object { $_.FullName -like "*Typst.Typst*" } |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1

        if ($candidate) {
            return $candidate.FullName
        }
    }

    return $null
}

$typstExe = Resolve-TypstExecutable
if (-not $typstExe) {
    Write-Error "Typst CLI nicht gefunden. Bitte Typst installieren und PATH prüfen."
}

if ($Mode -notin @("test", "test-watch") -and -not (Test-Path "src/main.typ")) {
    Write-Error "Einstiegsdatei fehlt: src/main.typ"
}
if ($Mode -in @("test", "test-watch") -and -not (Test-Path "test/main.typ")) {
    Write-Error "Einstiegsdatei fehlt: test/main.typ"
}

New-Item -ItemType Directory -Force -Path "dist" | Out-Null

if (-not (Get-ChildItem -Path "fonts" -File -ErrorAction SilentlyContinue)) {
    Write-Warning "Keine Font-Dateien in fonts/ gefunden. Build kann mit Fallback-Schriften scheitern oder anders aussehen."
}

switch ($Mode) {
    "fast" {
        & $typstExe compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
    }
    "watch" {
        & $typstExe watch --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
    }
    "ua" {
        & $typstExe compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 src/main.typ dist/book-ua.pdf
    }
    "test" {
        & $typstExe compile --root . --ignore-system-fonts --font-path fonts test/main.typ dist/test.pdf
    }
    "test-watch" {
        & $typstExe watch --root . --ignore-system-fonts --font-path fonts test/main.typ dist/test.pdf
    }
}

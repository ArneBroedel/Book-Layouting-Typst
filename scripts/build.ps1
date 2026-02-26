param(
    [ValidateSet("fast", "watch", "ua")]
    [string]$Mode = "fast"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $root

if (-not (Get-Command typst -ErrorAction SilentlyContinue)) {
    Write-Error "Typst CLI nicht gefunden. Bitte Typst installieren und PATH prüfen."
}

if (-not (Test-Path "src/main.typ")) {
    Write-Error "Einstiegsdatei fehlt: src/main.typ"
}

New-Item -ItemType Directory -Force -Path "dist" | Out-Null

if (-not (Get-ChildItem -Path "fonts" -File -ErrorAction SilentlyContinue)) {
    Write-Warning "Keine Font-Dateien in fonts/ gefunden. Build kann mit Fallback-Schriften scheitern oder anders aussehen."
}

switch ($Mode) {
    "fast" {
        typst compile --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
    }
    "watch" {
        typst watch --root . --ignore-system-fonts --font-path fonts src/main.typ dist/book.pdf
    }
    "ua" {
        typst compile --root . --ignore-system-fonts --font-path fonts --pdf-standard ua-1 src/main.typ dist/book-ua.pdf
    }
}

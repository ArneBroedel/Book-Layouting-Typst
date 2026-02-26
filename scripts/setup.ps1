param(
    [switch]$IncludeOptionalTools,
    [switch]$SkipVsCodeExtensions
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Error "winget nicht gefunden. Installiere den App Installer aus dem Microsoft Store und starte PowerShell neu."
}

$packages = @(
    @{ Name = "Git"; Id = "Git.Git"; Required = $true },
    @{ Name = "PowerShell 7"; Id = "Microsoft.PowerShell"; Required = $true },
    @{ Name = "Node.js LTS"; Id = "OpenJS.NodeJS.LTS"; Required = $true },
    @{ Name = "Python 3.12"; Id = "Python.Python.3.12"; Required = $true },
    @{ Name = "Typst"; Id = "Typst.Typst"; Required = $true },
    @{ Name = "VS Code"; Id = "Microsoft.VisualStudioCode"; Required = $true },
    @{ Name = "Git LFS"; Id = "GitHub.GitLFS"; Required = $false }
)

Write-Host "== Installation via winget ==" -ForegroundColor Cyan

foreach ($pkg in $packages) {
    if (-not $IncludeOptionalTools -and -not $pkg.Required) {
        continue
    }

    Write-Host "Installiere: $($pkg.Name) [$($pkg.Id)]"
    winget install --id $pkg.Id --exact --accept-package-agreements --accept-source-agreements --silent
}

if (Get-Command git-lfs -ErrorAction SilentlyContinue) {
    git lfs install | Out-Null
    Write-Host "Git LFS initialisiert"
}

if (-not $SkipVsCodeExtensions -and (Get-Command code -ErrorAction SilentlyContinue)) {
    $extensionsFile = Join-Path $PSScriptRoot "../.vscode/extensions.json"
    if (Test-Path $extensionsFile) {
        $json = Get-Content -Raw $extensionsFile | ConvertFrom-Json
        foreach ($ext in $json.recommendations) {
            Write-Host "Installiere VS Code Extension: $ext"
            code --install-extension $ext --force | Out-Null
        }
    }
}

Write-Host "`nSetup abgeschlossen. Starte das Terminal neu und führe dann aus:" -ForegroundColor Green
Write-Host "  ./scripts/preflight.ps1 -RunBuildTest"

param(
    [switch]$RunBuildTest
)

$ErrorActionPreference = "Stop"

$commandsRequired = @("git", "typst", "node", "python", "pwsh")
$commandsRecommended = @("git-lfs")

function Parse-VersionObject {
    param(
        [string]$RawText,
        [string]$Pattern
    )

    if ($RawText -match $Pattern) {
        return [version]$matches[1]
    }

    return $null
}

function Assert-MinVersion {
    param(
        [string]$Name,
        [version]$Current,
        [version]$Minimum
    )

    if ($null -eq $Current) {
        Write-Error "[FEHLT] Version für $Name konnte nicht gelesen werden"
    }

    if ($Current -lt $Minimum) {
        Write-Error "[FEHLT] $Name Version $Current < Mindestversion $Minimum"
    }

    Write-Host "[OK] $Name Version $Current (>= $Minimum)"
}

Write-Host "== Pflichtchecks ==" -ForegroundColor Cyan
foreach ($cmd in $commandsRequired) {
    if (Get-Command $cmd -ErrorAction SilentlyContinue) {
        Write-Host "[OK] $cmd gefunden"
    }
    else {
        Write-Error "[FEHLT] $cmd nicht gefunden"
    }
}

Write-Host "`n== Empfehlungchecks ==" -ForegroundColor Cyan
foreach ($cmd in $commandsRecommended) {
    if (Get-Command $cmd -ErrorAction SilentlyContinue) {
        Write-Host "[OK] $cmd gefunden"
    }
    else {
        Write-Host "[HINWEIS] $cmd nicht gefunden (optional)" -ForegroundColor Yellow
    }
}

$requiredPaths = @(
    "src/main.typ",
    "src/templates/layout.typ",
    "src/chapters/01-intro.typ",
    "fonts",
    "assets",
    "dist"
)

Write-Host "`n== Strukturchecks ==" -ForegroundColor Cyan
foreach ($relativePath in $requiredPaths) {
    if (Test-Path $relativePath) {
        Write-Host "[OK] $relativePath"
    }
    else {
        Write-Error "[FEHLT] $relativePath"
    }
}

Write-Host "`n== Versionen ==" -ForegroundColor Cyan
$gitRaw = git --version
$typstRaw = typst --version
$nodeRaw = node --version
$pythonRaw = python --version
$pwshRaw = $PSVersionTable.PSVersion.ToString()

Write-Host ("git    : " + $gitRaw)
Write-Host ("typst  : " + $typstRaw)
Write-Host ("node   : " + $nodeRaw)
Write-Host ("python : " + $pythonRaw)
Write-Host ("pwsh   : " + $pwshRaw)

Write-Host "`n== Mindestversionen ==" -ForegroundColor Cyan
$gitVersion = Parse-VersionObject -RawText $gitRaw -Pattern '([0-9]+\.[0-9]+\.[0-9]+)'
$typstVersion = Parse-VersionObject -RawText $typstRaw -Pattern '([0-9]+\.[0-9]+\.[0-9]+)'
$nodeVersion = Parse-VersionObject -RawText $nodeRaw -Pattern 'v([0-9]+\.[0-9]+\.[0-9]+)'
$pythonVersion = Parse-VersionObject -RawText $pythonRaw -Pattern '([0-9]+\.[0-9]+\.[0-9]+)'
$pwshVersion = [version]$pwshRaw

Assert-MinVersion -Name "git" -Current $gitVersion -Minimum ([version]"2.40.0")
Assert-MinVersion -Name "typst" -Current $typstVersion -Minimum ([version]"0.14.2")
Assert-MinVersion -Name "node" -Current $nodeVersion -Minimum ([version]"20.0.0")
Assert-MinVersion -Name "python" -Current $pythonVersion -Minimum ([version]"3.12.0")
Assert-MinVersion -Name "pwsh" -Current $pwshVersion -Minimum ([version]"7.0.0")

if ($RunBuildTest) {
    Write-Host "`n== Build-Test ==" -ForegroundColor Cyan
    & "$PSScriptRoot/build.ps1" -Mode fast
    if (-not (Test-Path "dist/book.pdf")) {
        Write-Error "[FEHLT] dist/book.pdf wurde nicht erzeugt"
    }
    Write-Host "[OK] dist/book.pdf erzeugt"
}

Write-Host "`nPreflight abgeschlossen." -ForegroundColor Green

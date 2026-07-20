# Convert a Typst print PDF (RGB + bleed + crop marks) to PDF/X CMYK.
# Windows mirror of scripts/print-pdfx.sh.
#
# Usage:
#   pwsh -File scripts/print-pdfx.ps1 [-InputPdf path] [-OutputPdf path] [-Profile path] [-Pdfx 3|4]
param(
    [string]$InputPdf = "dist/book-print-rgb.pdf",
    [string]$OutputPdf = "dist/book-print.pdf",
    [string]$Profile = "",
    [ValidateSet("3", "4")]
    [string]$Pdfx = "3"
)

$ErrorActionPreference = "Stop"
$Root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $Root

if (-not $Profile) {
    $Profile = Join-Path $Root "prepress\profiles\default_cmyk.icc"
}

function Resolve-Ghostscript {
    if ($env:GS -and (Test-Path $env:GS)) { return $env:GS }
    $cmd = Get-Command gs -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    $cmd = Get-Command gswin64c -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    $cmd = Get-Command gswin32c -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    return $null
}

$gs = Resolve-Ghostscript
if (-not $gs) {
    Write-Error "Ghostscript not found. Install via winget install ArtifexSoftware.GhostScript or set `$env:GS."
}

if (-not (Test-Path $InputPdf)) {
    Write-Error "Input PDF missing: $InputPdf — build with scripts/build.ps1 -Mode print first."
}
if (-not (Test-Path $Profile)) {
    Write-Error "ICC profile missing: $Profile — see prepress/profiles/README.md"
}

$defSrc = Join-Path $Root "prepress\PDFX_def.ps"
if (-not (Test-Path $defSrc)) {
    Write-Error "Missing $defSrc"
}

$ProfileAbs = (Resolve-Path $Profile).Path
$PsProfile = $ProfileAbs -replace '\\', '/' -replace '\(', '\(' -replace '\)', '\)'

$tmpDef = [System.IO.Path]::GetTempFileName() + ".ps"
try {
    (Get-Content -Raw $defSrc) -replace '/ICCProfile \(.*\) def', "/ICCProfile ($PsProfile) def" |
        Set-Content -Encoding ascii $tmpDef

    $outDir = Split-Path -Parent $OutputPdf
    if ($outDir -and -not (Test-Path $outDir)) {
        New-Item -ItemType Directory -Force -Path $outDir | Out-Null
    }

    Write-Host "print-pdfx: $InputPdf → $OutputPdf (PDF/X-$Pdfx, profile=$(Split-Path -Leaf $Profile))"

    $profileDir = Split-Path -Parent $ProfileAbs
    & $gs `
        -dBATCH -dNOPAUSE -dNOOUTERSAVE `
        "--permit-file-read=$ProfileAbs" `
        "--permit-file-read=$profileDir/" `
        "--permit-file-read=$InputPdf" `
        "--permit-file-read=$tmpDef" `
        -sDEVICE=pdfwrite `
        -dCompatibilityLevel=1.4 `
        "-dPDFX=$Pdfx" `
        -dPreserveAnnots=false `
        -sColorConversionStrategy=CMYK `
        -dProcessColorModel=/DeviceCMYK `
        -dConvertCMYKImagesToRGB=false `
        -dRenderIntent=1 `
        "-sOutputICCProfile=$ProfileAbs" `
        "-sDefaultCMYKProfile=$ProfileAbs" `
        "-sOutputFile=$OutputPdf" `
        $tmpDef `
        $InputPdf

    if ($LASTEXITCODE -ne 0) {
        Write-Error "ghostscript failed (exit $LASTEXITCODE)"
    }
    if (-not (Test-Path $OutputPdf)) {
        Write-Error "Expected output not created: $OutputPdf"
    }
    Write-Host "print-pdfx: OK → $OutputPdf"
}
finally {
    if (Test-Path $tmpDef) { Remove-Item $tmpDef -Force }
}

param(
    [Parameter(Mandatory=$true)]
    [string]$TargetRoot,
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$packRoot = Split-Path -Parent $PSScriptRoot
$templateRoot = Join-Path $packRoot 'templates'

if (-not (Test-Path -LiteralPath $templateRoot)) {
    throw "Template root nao encontrado: $templateRoot"
}

New-Item -ItemType Directory -Path $TargetRoot -Force | Out-Null

$items = Get-ChildItem -LiteralPath $templateRoot -Recurse -Force
foreach ($item in $items) {
    $relative = $item.FullName.Substring($templateRoot.Length).TrimStart('\\')
    $destination = Join-Path $TargetRoot $relative

    if ($item.PSIsContainer) {
        New-Item -ItemType Directory -Path $destination -Force | Out-Null
        continue
    }

    $destinationDir = Split-Path -Parent $destination
    if (-not (Test-Path -LiteralPath $destinationDir)) {
        New-Item -ItemType Directory -Path $destinationDir -Force | Out-Null
    }

    if ((Test-Path -LiteralPath $destination) -and -not $Force) {
        continue
    }

    Copy-Item -LiteralPath $item.FullName -Destination $destination -Force
}

Write-Host "STARTER_WORKSPACE_READY $TargetRoot"
Write-Host "Proximo passo: preencher placeholders __LIKE_THIS__ nos arquivos copiados."

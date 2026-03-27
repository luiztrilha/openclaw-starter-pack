param(
    [Parameter(Mandatory=$true)]
    [string]$TemplatePath,
    [Parameter(Mandatory=$true)]
    [string]$OutputPath,
    [Parameter(Mandatory=$true)]
    [string]$VariablesPath,
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $TemplatePath)) { throw "Template nao encontrado: $TemplatePath" }
if (-not (Test-Path -LiteralPath $VariablesPath)) { throw "Arquivo de variaveis nao encontrado: $VariablesPath" }
if ((Test-Path -LiteralPath $OutputPath) -and -not $Force) { throw "Output ja existe. Use -Force para sobrescrever: $OutputPath" }

$template = Get-Content -LiteralPath $TemplatePath -Raw
$variables = Get-Content -LiteralPath $VariablesPath -Raw | ConvertFrom-Json

foreach ($prop in $variables.PSObject.Properties) {
    $placeholder = '__' + [string]$prop.Name + '__'
    $value = [string]$prop.Value
    $template = $template.Replace($placeholder, $value)
}

$remaining = [regex]::Matches($template, '__[A-Z0-9_]+__') | ForEach-Object { $_.Value } | Select-Object -Unique
if (@($remaining).Count -gt 0) {
    throw ('Placeholders pendentes: ' + (@($remaining) -join ', '))
}

$outputDir = Split-Path -Parent $OutputPath
if (-not (Test-Path -LiteralPath $outputDir)) { New-Item -ItemType Directory -Path $outputDir -Force | Out-Null }
Set-Content -LiteralPath $OutputPath -Value $template -Encoding UTF8
Write-Host "RUNTIME_RENDER_OK $OutputPath"

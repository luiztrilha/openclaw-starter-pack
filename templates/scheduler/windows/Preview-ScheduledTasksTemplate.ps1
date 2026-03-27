param(
    [Parameter(Mandatory=$true)]
    [string]$ConfigPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$config = Get-Content -LiteralPath $ConfigPath -Raw | ConvertFrom-Json
foreach ($task in @($config.tasks)) {
    Write-Host ('SCHEDULER_TEMPLATE {0} | enabled={1} | schedule={2} | script={3}' -f $task.name, $task.enabled, $task.schedule, $task.scriptPath)
}

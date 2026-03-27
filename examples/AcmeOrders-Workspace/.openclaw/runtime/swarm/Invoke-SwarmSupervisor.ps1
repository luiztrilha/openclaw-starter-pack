param(
    [string]$WorkspaceRoot = 'D:/Times/AcmeOrders-Workspace'
)

$reportPath = Join-Path $WorkspaceRoot 'Relatorios/Swarm/supervisor-status.md'
$timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
$content = @"
# Supervisor Status

- UpdatedAt: $timestamp
- Mode: manual-assisted
- RepoCount: 1
- OpenTasks: 1
- Notes: Example script for starter pack. Replace with real supervisor logic.
"@

Set-Content -Path $reportPath -Value $content -Encoding UTF8
Write-Host 'SUPERVISOR_OK report=Relatorios/Swarm/supervisor-status.md'

# Pack Contents

## Documentos

- `MANUAL-DO-ZERO.md`: guia de implantacao do fluxo.
- `IMPLEMENTATION-CHECKLIST.md`: checklist de rollout.
- `ROLLOUT-BY-MATURITY.md`: roteiro de implantacao por niveis de maturidade.
- `RUNTIME-GENERATION.md`: guia para gerar runtime efetivo a partir de templates e variaveis locais.

## Templates de workspace

- `templates/workspace/AGENTS.md`
- `templates/workspace/SOUL.md`
- `templates/workspace/USER.md`
- `templates/workspace/TOOLS.md`
- `templates/workspace/HEARTBEAT.md`
- `templates/workspace/MEMORY.md`
- `templates/workspace/.gitignore`
- `templates/workspace/memory/README.md`

## Templates de repositorio

- `templates/repo/AGENTS.md`

## Templates de OpenClaw

- `templates/.openclaw/README.md`
- `templates/.openclaw/OPENCLAW-OPERATING-CONTRACT.md`
- `templates/.openclaw/runtime/codex/config.template.toml`
- `templates/.openclaw/runtime/swarm/swarm-config.template.json`
- `templates/.openclaw/runtime/secrets.local.example.json`
- `templates/.openclaw/runtime/variables.example.json`

## Templates de scheduler

- `templates/scheduler/README.md`
- `templates/scheduler/windows/scheduled-tasks.template.json`
- `templates/scheduler/windows/Preview-ScheduledTasksTemplate.ps1`

## Scripts utilitarios

- `scripts/New-OpenClawStarterWorkspace.ps1`: scaffolding inicial do workspace e copia de templates.
- `scripts/Render-TemplateWithVariables.ps1`: gera runtime efetivo a partir de template e arquivo de variaveis.

## Exemplos v3

- `examples/README.md`
- `examples/EXAMPLE-WALKTHROUGH.md`
- `examples/AcmeOrders-Workspace/`: workspace piloto ficticio com repo, runtime, backlog e relatorios simulados.

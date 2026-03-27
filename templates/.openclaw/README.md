# OpenClaw Manual

Este diretorio guarda a configuracao viva do fluxo.

## Estrutura minima

- `runtime/codex/`
- `runtime/swarm/`
- `runtime/secrets.local.json`
- `OPENCLAW-OPERATING-CONTRACT.md`

## Regras

- templates versionados
- segredos locais fora do Git
- runtime efetivo gerado a partir de template + configuracao local
- artefatos operacionais escritos fora da pasta `.openclaw`, em `Relatorios/` e `Swarm/`

## Implantacao minima

1. preencher `runtime/codex/config.template.toml`
2. preencher `runtime/swarm/swarm-config.template.json`
3. criar `runtime/secrets.local.json` local
4. apontar o runtime para os repositorios reais do time
5. validar um repo piloto antes de expandir

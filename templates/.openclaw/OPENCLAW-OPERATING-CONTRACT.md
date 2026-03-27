# OpenClaw Operating Contract

## Objetivo

Fixar o contrato minimo do fluxo para a equipe.

## Regras de fluxo

1. Todo pedido operacional relevante deve gerar artefato, backlog ou relatorio.
2. Autoria de codigo deve ficar em workers de codigo definidos pelo time.
3. Relatorios humanos oficiais vivem em `Relatorios/`.
4. Status curtos de jobs diretos podem espelhar em `Swarm/`.
5. Segredos nao entram em template versionado.
6. Publicacao externa, push, PR e deploy pedem aprovacao humana ate maturidade operacional.

## Contratos de entrada

- lista de repositorios atendidos
- backlog do swarm
- regras do workspace
- regras locais de cada repo

## Contratos de saida

- backlog com status canonicos
- supervisor com `GeneratedAt`, `Status`, `Triggered`, `Completed`, `Blocked`, `AffectedScope`, `Notes`
- relatorio final com caminhos e escopo claros

## Telemetria minima

Toda automacao precisa responder:

- rodou?
- quando rodou?
- o que fez?
- o que bloqueou?
- que repo ou task afetou?

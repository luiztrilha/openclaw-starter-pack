# Rollout Por Maturidade

Este documento explica como implantar o fluxo em etapas, sem exigir que a equipe ligue tudo de uma vez.

## Nivel 0 - Assistencia manual

Objetivo:

- usar Codex ou outro agente de codigo de forma manual
- sem swarm automatico
- sem scheduler
- sem intake externo

Minimo necessario:

- workspace criado
- `AGENTS.md` do workspace
- `AGENTS.md` do repo piloto
- template do Codex preenchido
- validacao manual do repo conhecida

Critério para sair do nivel 0:

- a equipe consegue pedir leitura, diagnostico e um fix simples
- a equipe sabe validar o resultado localmente
- nao depende de conversa oral para entender o que mudou

## Nivel 1 - Backlog e relatorio local

Objetivo:

- registrar tarefas em backlog local
- gerar relatorios humanos em `Relatorios/`
- manter o fluxo rastreavel

Adicionar:

- `swarm-config`
- contrato operacional
- status canonicos
- relatorio de supervisor, mesmo manual

Critério para sair do nivel 1:

- toda task relevante deixa artefato
- backlog e relatorio batem com o estado real

## Nivel 2 - Supervisor local sob demanda

Objetivo:

- rodar supervisor localmente quando necessario
- sem agendamento automatico ainda

Adicionar:

- script de supervisor
- estado local
- logs locais
- validacao local do artefato

Critério para sair do nivel 2:

- uma task consegue ir de backlog para resultado de forma consistente
- erros de fluxo aparecem nos artefatos, nao so no terminal

## Nivel 3 - Scheduler local

Objetivo:

- automatizar jobs recorrentes basicos
- manter baixa complexidade operacional

Adicionar:

- registro de tasks do scheduler
- wrappers de execucao
- logs e estado por job

Ative primeiro:

- supervisor
- consolidacao simples
- housekeeping

Nao ative ainda:

- intake externo
- push ou PR automatico
- notificacao externa sem governanca

## Nivel 4 - Intake e notificacao externos

Objetivo:

- receber pedidos por chat ou plano de controle
- emitir notificacoes externas

Pre-requisitos:

- backlog estavel
- relatorios confiaveis
- aprovacoes humanas claras
- segredo local bem separado

## Nivel 5 - Automacao com guardas

Objetivo:

- permitir acoes externas com gates e rastreabilidade

Exemplos:

- comentario em PR
- criacao de PR
- push controlado
- dispatch por chat estruturado

Pre-requisitos:

- contrato operacional maduro
- validacao local robusta
- ownership claro
- rollback humano definido

## Regra pratica

Se o time ainda discute "onde ver o estado real", ele ainda nao esta pronto para subir de nivel.

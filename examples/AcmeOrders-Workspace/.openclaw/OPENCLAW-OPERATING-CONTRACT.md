# OpenClaw Operating Contract

## Escopo

Este contrato vale para o workspace piloto `AcmeOrders-Workspace`.

## Objetivo

Transformar pedidos de manutencao e pequenas evolucoes em tarefas rastreaveis, com validacao local e artefato humano.

## Regras

- codigo so pode ser alterado dentro de repositorio conhecido
- toda execucao relevante precisa produzir ou atualizar artefato em `Relatorios/`
- segredos ficam em arquivo local ignorado
- publicar, comentar externamente ou abrir PR automatico exige confirmacao humana

## Fluxo minimo

1. Registrar task no backlog.
2. Executar analise ou implementacao no repo piloto.
3. Rodar validacao minima do repo.
4. Atualizar artefato humano.
5. Fechar task com status claro.

## Sinais de bloqueio

- requisito ambiguo
- falha de ambiente
- validacao quebrada sem causa isolada
- necessidade de credencial nao configurada

# Scheduler Notes

Este template serve para times que querem usar o Task Scheduler do Windows como orquestrador recorrente local.

## Regras

- cada job deve escrever artefato ou log rastreavel
- jobs devem usar wrappers PowerShell simples
- o scheduler nao deve virar lugar de logica de negocio
- tarefas externas devem continuar protegidas por aprovacao humana

## Ordem sugerida de jobs

1. supervisor
2. summary diario
3. housekeeping

## Campos que devem ser definidos por time

- nome da task
- script alvo
- periodicidade
- conta de execucao
- diretorio de trabalho
- politica de retry

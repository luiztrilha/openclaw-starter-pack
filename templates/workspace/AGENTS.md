# AGENTS.md - Workspace `__WORKSPACE_ROOT__`

Este workspace e a fonte de verdade operacional do time.

## Startup obrigatorio

No inicio de cada sessao principal:

1. Ler `SOUL.md`
2. Ler `USER.md`
3. Ler `memory/YYYY-MM-DD.md` de hoje e ontem
4. Ler `MEMORY.md` apenas em sessao principal com o usuario

## Objetivo

Aqui vivem:

- contexto do workspace
- memoria diaria
- configuracao canonica do fluxo
- relatorios e espelhos operacionais
- repositorios principais de codigo

## Arquivos principais

- `SOUL.md`
- `USER.md`
- `TOOLS.md`
- `HEARTBEAT.md`
- `memory/YYYY-MM-DD.md`
- `MEMORY.md`
- `.openclaw/`
- `Relatorios/`
- `Swarm/`

## Memoria

Se vale lembrar, escreva.

Escreva em:

- `memory/YYYY-MM-DD.md` para fatos do dia
- `MEMORY.md` para conhecimento duravel
- `TOOLS.md` para comandos e caminhos
- `AGENTS.md` para regras do workspace

## Seguranca

Sem perguntar:

- ler arquivos locais
- investigar estado local
- organizar documentacao
- ajustar configuracao interna

Perguntar antes:

- publicar conteudo
- enviar dados para fora da maquina
- apagar de forma destrutiva
- qualquer acao que exponha dado privado

## Roteamento de codigo

- mudanca de codigo em repo conhecido deve virar task do fluxo ou sessao direta, conforme a politica do time
- nao improvisar fora do contrato operacional
- sempre respeitar `AGENTS.md` local de cada repositorio

## Git

- nao commitar em branch protegida sem instrucao clara
- rodar validacao relevante antes de concluir
- nao reverter trabalho alheio

## Regra final

Este workspace e infraestrutura viva. Mantenha limpo, rastreavel e verificavel.

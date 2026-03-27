# Implementation Checklist

## Preparacao

- Escolher um workspace raiz exclusivo do time.
- Definir 1 repo piloto.
- Definir 1 pessoa responsavel pela configuracao inicial.
- Definir onde ficarao logs, estado, worktrees e relatorios.

## Estrutura minima

- Criar `.openclaw/`.
- Criar `Relatorios/`.
- Criar `Swarm/`.
- Criar `memory/`.
- Criar arquivos `SOUL.md`, `USER.md`, `TOOLS.md`, `HEARTBEAT.md`, `MEMORY.md`, `AGENTS.md`.

## Configuracao local

- Preencher `templates/.openclaw/runtime/codex/config.template.toml`.
- Copiar para runtime efetivo ou gerar a partir dele.
- Preencher `templates/.openclaw/runtime/swarm/swarm-config.template.json`.
- Criar um arquivo local de segredos a partir de `secrets.local.example.json`.
- Garantir que segredos estejam no `.gitignore`.

## Contrato

- Ajustar `AGENTS.md` do workspace.
- Ajustar `AGENTS.md` do repo piloto.
- Ajustar `OPENCLAW-OPERATING-CONTRACT.md`.
- Definir quais acoes continuam com aprovacao humana.

## Operacao inicial

- Testar Codex em modo manual no repo piloto.
- Criar uma task manual simples.
- Registrar saida em `Relatorios/`.
- Verificar se o artefato final esta coerente com o repositorio.
- Validar se a equipe sabe localizar backlog, status e memoria.

## Antes de automacao

- Revisar prompts e regras de roteamento.
- Confirmar branch protegida.
- Confirmar validacao minima do repo.
- Confirmar separacao entre template versionado e segredo local.
- Confirmar processo de rollback humano.

## Sinais de que o fluxo ainda nao esta pronto

- o time so entende o fluxo pela conversa com a IA
- backlog sem fonte clara
- runtime com segredo dentro do arquivo versionado
- artefatos sem data, escopo ou status
- repositorio muda sem task ou relatorio associado

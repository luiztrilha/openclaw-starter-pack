# Manual Do Zero

Este pack foi feito para uma equipe sem experiencia previa com IA operacional, mas que quer montar um fluxo parecido com o OpenClaw em outros repositorios.

Objetivo do fluxo:

- manter um workspace como fonte de verdade operacional
- separar contexto humano, configuracao, backlog, execucao e artefatos
- usar IA de forma rastreavel, com contratos simples e validacao local
- evitar depender de segredo embutido em arquivos versionados

## O que este pack entrega

- manual de implantacao do zero
- checklist de rollout
- templates de workspace
- templates de `.openclaw`
- templates de configuracao do Codex e do swarm
- exemplo de segredos locais separado do versionamento
- script simples para scaffolding inicial

## O que este pack nao leva

- chaves, tokens ou senhas reais
- caminhos pessoais do ambiente original
- nomes de contas, IDs ou webhooks reais
- binds obrigatorios a Telegram, Teams, GitHub ou banco

## Modelo mental simples

Pense no fluxo em 5 camadas:

1. Workspace
2. Repositorios de codigo
3. Runtime local do OpenClaw
4. Swarm e backlog
5. Relatorios e espelho operacional

## Fase 1: preparar o workspace

Crie uma pasta raiz do time, por exemplo:

- `D:\Times\MeuTimeAI`

Dentro dela, mantenha:

- `.openclaw/`
- `Relatorios/`
- `Swarm/`
- `memory/`
- `SOUL.md`
- `USER.md`
- `TOOLS.md`
- `HEARTBEAT.md`
- `MEMORY.md`
- `AGENTS.md`

Regra importante:

- o workspace guarda a operacao
- os repositorios guardam o codigo
- o runtime local guarda configuracao efetiva
- os segredos ficam fora do Git ou em arquivo local ignorado

## Fase 2: decidir como o time vai usar IA

Comece simples. Antes de automacao, alinhe 3 decisoes:

1. Quem pode pedir execucao de codigo.
2. Em quais repositorios o fluxo vale.
3. Quais tarefas vao continuar humanas.

Recomendacao para time iniciante:

- usar IA primeiro para triagem, leitura, checklist e pequenos fixes
- ativar swarm automatico so depois que o backlog e os artefatos estiverem estaveis
- manter branch protegida e validacao obrigatoria

## Fase 3: configurar o Codex local

Use o template em `templates/.openclaw/runtime/codex/config.template.toml`.

Voce precisa definir individualmente:

- provider ou gateway local
- modelo padrao
- workspaces confiaveis
- MCPs realmente necessarios

Comece com o minimo:

- provider principal
- trust do workspace
- filesystem MCP

Tudo o resto e opcional.

## Fase 4: configurar o swarm

Use o template em `templates/.openclaw/runtime/swarm/swarm-config.template.json`.

Preencha:

- root do workspace
- root de worktrees
- root de logs e estado
- lista de repositorios atendidos
- worker pool
- paralelismo maximo

Recomendacao para time iniciante:

- `maxParallelTasks = 1`
- um worker Codex principal
- backlog e supervisor primeiro
- notificacao externa apenas depois

## Fase 5: definir o contrato operacional

Sem contrato, a equipe vira refem de conversa solta com IA.

O contrato minimo precisa fixar:

- quem cria backlog
- quem implementa codigo
- onde sai o artefato humano oficial
- o que significa sucesso, bloqueio e falha
- quando pedir confirmacao humana
- o que nunca pode sair da maquina sem autorizacao

Use o template em `templates/.openclaw/OPENCLAW-OPERATING-CONTRACT.md`.

## Fase 6: ligar o fluxo de forma segura

Ordem recomendada:

1. Workspace e templates
2. Codex local funcionando manualmente
3. Repositorios mapeados
4. Backlog e relatorios locais
5. Supervisor local
6. Validacao local
7. Notificacao externa opcional
8. Intake conversacional opcional

Nao pule do passo 2 para o 8.

## Fase 7: modo de uso para equipe iniciante

Comece com 3 tipos de pedido:

- leitura e diagnostico
- tarefa manual registrada no backlog
- execucao controlada em repo conhecido

Evite no inicio:

- multiagente em paralelo
- intake por chat sem formato fixo
- automacao externa com push ou PR automatico
- misturar planejamento e autoria sem backlog

## Regras praticas de seguranca

- segredo nunca vai para template versionado
- runtime efetivo pode ser gerado a partir de template + segredo local
- arquivo de segredo deve ser individual por maquina ou ambiente
- push, PR, comentario externo e mensagem externa devem continuar sob confirmacao humana ate maturidade operacional

## Como adaptar para outros repositorios

Para um novo repo:

1. adicionar no `swarm-config`
2. criar `AGENTS.md` local do repo
3. definir validacao minima do repo
4. criar caminho de auditoria/relatorio
5. testar uma task manual ponta a ponta

## Critério de pronto

Considere o fluxo pronto quando:

- qualquer pessoa do time entende onde pedir, onde ver e onde validar
- o backlog tem fonte clara
- os relatorios batem com o estado real
- o runtime nao depende de segredo versionado
- uma task simples consegue ir de intake ate artefato final sem improviso

## Próximo passo recomendado

1. Rodar o script `scripts/New-OpenClawStarterWorkspace.ps1` em uma pasta vazia.
2. Preencher placeholders do pack.
3. Conectar um unico repo piloto.
4. Validar manualmente antes de ligar automacao.

## Complementos do pack v2

O pack agora tambem inclui:

- rollout por maturidade em ROLLOUT-BY-MATURITY.md
- templates de scheduler em 	emplates/scheduler/
- geracao de runtime por placeholders em RUNTIME-GENERATION.md
- script Render-TemplateWithVariables.ps1 para produzir arquivos efetivos sem versionar segredo

## Complementos do pack v3

O pack agora tambem inclui um exemplo ficticio completo em `examples/AcmeOrders-Workspace/`.

Use esse exemplo quando o time precisar ver a estrutura final pronta antes de adaptar para um repositorio real.

Arquivos que merecem leitura primeiro:

- `examples/EXAMPLE-WALKTHROUGH.md`
- `examples/AcmeOrders-Workspace/AGENTS.md`
- `examples/AcmeOrders-Workspace/.openclaw/OPENCLAW-OPERATING-CONTRACT.md`
- `examples/AcmeOrders-Workspace/Relatorios/Swarm/task-backlog.md`
- `examples/AcmeOrders-Workspace/Relatorios/Swarm/supervisor-status.md`

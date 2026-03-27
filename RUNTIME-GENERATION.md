# Runtime Generation

Use `Render-TemplateWithVariables.ps1` para gerar arquivos efetivos a partir dos templates.

## Fluxo sugerido

1. Copiar `variables.example.json` para um arquivo local, por exemplo `variables.local.json`.
2. Preencher os placeholders.
3. Renderizar os templates necessarios.

## Exemplos

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\Render-TemplateWithVariables.ps1 `
  -TemplatePath .\.openclaw\runtime\codex\config.template.toml `
  -VariablesPath .\.openclaw\runtime\variables.local.json `
  -OutputPath .\.openclaw\runtime\generated\codex\config.toml
```

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\Render-TemplateWithVariables.ps1 `
  -TemplatePath .\.openclaw\runtime\swarm\swarm-config.template.json `
  -VariablesPath .\.openclaw\runtime\variables.local.json `
  -OutputPath .\.openclaw\runtime\generated\swarm\swarm-config.json
```

## Regras

- o arquivo de variaveis real nao deve ser versionado se contiver dados internos
- segredos continuam em arquivo local separado
- falha por placeholder pendente deve bloquear a geracao

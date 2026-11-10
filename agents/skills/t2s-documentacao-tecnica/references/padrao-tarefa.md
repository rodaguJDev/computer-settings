# Padrão editorial de documentação de tarefas

## Responsabilidades, não um template obrigatório

O exemplo que motivou esta skill contém:

```markdown
# Tarefa <identificador> — <título>
## Solicitação
## Análise
## Solução
## Apêndices
# Testes
# Homologação
# Produção
```

Preserve a estrutura do documento real. Não normalize os H1 finais para H2 por estética, não acrescente Apêndices por padrão e não renomeie Análise para outro termo sem aprovação. Para um documento novo, proponha a estrutura adequada e obtenha aprovação antes de criá-lo.

## Análise: o que precisa ser verdade

Descreva o contexto e a necessidade com critérios observáveis. Por exemplo, em uma tarefa cujo requisito confirmado é configuração por ambiente:

> A entrega precisa permitir configurar o destino da aplicação sem recompilar o artefato. Variáveis obrigatórias ausentes devem impedir a inicialização com mensagem que identifique a regra violada sem revelar o valor.

Se a única fonte for código que implementa esse comportamento, não atribua essa intenção ao solicitante. Escreva a inferência no diálogo de planejamento, peça confirmação se material e não a promova a critério confirmado por conta própria.

Use lista numerada quando ajudar a relacionar necessidades e solução, mas não transforme toda tarefa em onze requisitos como no exemplo original.

## Solução: como a entrega atende à necessidade

Explique a organização final, as decisões e seu efeito para o desenvolvedor. Para o requisito confirmado acima, se sustentado pelos arquivos atuais:

> A aplicação recebe a configuração pelas variáveis do processo. A validação ocorre antes da criação do contexto e interrompe a inicialização quando falta um campo obrigatório. Alterações na configuração do container exigem recriação; reiniciar o processo com o ambiente antigo não atualiza esses valores.

Esse texto descreve estado e funcionamento. “Primeiro alteramos o arquivo, depois tentamos duas abordagens e fizemos um commit” é histórico interno e deve ficar fora da tarefa.

Para entregas operacionais, inclua o necessário para compreender e usar a solução: requisitos, artefatos, configuração, modos, comandos, acessos e atualização. Para outras entregas, selecione os aspectos pertinentes. Não invente comandos, defaults ou garantias.

## Testes: precisão de evidência

| Fonte disponível | Formulação adequada | Conclusão indevida |
| --- | --- | --- |
| Leitura de script/configuração | “Inspeção estática confirmou que o comando está definido; execução não realizada.” | “Fluxo testado e aprovado.” |
| Log real de build com sucesso | “Build executado com sucesso, conforme o registro disponível.” | “Funcionalidade homologada.” |
| Desenvolvedor relata teste manual | “Validação manual informada pelo desenvolvedor: …” | Atribuir a execução ao agente ou inventar log/print. |
| Ausência de evidência | “Validação funcional pendente; não foi fornecida evidência de execução.” | Preencher sucesso para completar a seção. |

Comando, ambiente e resultado só devem ser descritos como executados quando constarem da evidência. Não insira dados fictícios em prints ou logs. Homologação e Produção continuam reservadas ao preenchimento manual, salvo autorização explícita para alterá-las.

## Conteúdo autossuficiente

Explique o contrato relevante no corpo. “Veja o README” sozinho não documenta a solução para quem ler no Google Docs. Links podem aprofundar ou fornecer apêndices; não precisam repetir todo arquivo de origem.

Identifique o contexto de comandos:

````markdown
Na raiz do repositório responsável, com os pré-requisitos descritos acima:

```sh
<comando conferido nos arquivos atuais>
```
````

O trecho acima é uma ilustração de formatação, não um comando para copiar nem placeholder autorizado para deixar em uma entrega final. Dê valores ilustrativos claramente identificados quando necessários e nunca use credenciais reais.

## Aprovação estrutural na prática

- Plano prevê “acrescentar `### Atualização` dentro de `## Solução`”: pode aplicar após cumprir o fluxo de planejamento aplicável, sem nova aprovação específica dessa subdivisão.
- Durante a redação surge vontade de criar `## Operação`: proponha título e posição e espere aprovação antes de alterar o documento.
- Renomear `### Atualização` para `### Manutenção`: exige aprovação, pois o nome de um heading existente está protegido.
- Documento novo sem estrutura fornecida: apresente o esqueleto H1/H2 para aprovação, em vez de escrever o documento inteiro para revisão posterior.
- Usuário já aprovou explicitamente “renomeie `## Análise` para `## Análise e Solução` e remova `## Solução`”: essa decisão estrutural já está autorizada; cumpra as demais exigências de planejamento sem repetir a pergunta.

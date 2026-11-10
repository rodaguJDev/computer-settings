---
name: t2s-documentacao-tecnica
description: Cria, revisa e atualiza documentação de tarefas T2S em Markdown, com Análise, Solução e evidências de Testes. Use quando o usuário pedir para documentar uma tarefa ou entrega, atualizar Tarefa-*.md, preparar o texto de uma tarefa para Google Docs ou seguir o padrão da Tarefa-43352, mesmo sem citar esta skill. Preserva a estrutura aprovada e as seções manuais. Não se aplica à criação isolada de README, how-tos, guias, referências, planos internos ou à publicação no Google Docs.
---

# Documentação de tarefas T2S

Produza documentação de entrega útil para outros desenvolvedores: o que era necessário, como a solução atende à necessidade e quais evidências realmente existem. O texto deve continuar compreensível quando copiado para o Google Docs, sem acesso ao chat ou ao workspace de origem.

Leia `references/padrao-tarefa.md` para as responsabilidades das seções e exemplos. O padrão é editorial: nomes de projetos, tecnologia, versões, portas e comandos dependem da tarefa atual.

## 1. Inspecionar e planejar

1. Siga as instruções globais e do repositório, inclusive o AGENTS.md e seus gates de aprovação. Esta skill acrescenta preferências documentais, não substitui essas instruções nem concede permissão para commits, publicação ou ações externas.
2. Inspecione o estado do Git, o documento existente e somente as fontes pertinentes: solicitação, critérios confirmados, READMEs, contratos, código/configuração e evidências. Preserve trabalho preexistente; pergunte se houver sobreposição.
3. Identifique a finalidade, o público, o destino e as seções manuais. Não peça novamente dados já fornecidos. Consulte registros antigos como contexto, sem tratá-los como contrato técnico atual.
4. Apresente o plano antes de escrever, no nível exigido pelas instruções aplicáveis. Inclua seções e subtópicos envolvidos, fontes a conferir, arquivos e verificações. Separe alterações editoriais de mudanças estruturais que precisam de aprovação.
5. Faça perguntas direcionadas quando faltar uma decisão material. Ao reconstruir a Análise a partir da implementação, identifique requisitos inferidos como hipóteses e peça confirmação quando afetarem o significado da entrega; comportamento existente não prova intenção de negócio.

## 2. Preservar a estrutura aprovada

A hierarquia representa decisões do desenvolvedor e frequentemente o formato de publicação. Não a reorganize apenas por preferência editorial.

| Operação | Tratamento |
| --- | --- |
| Criar, excluir, renomear, mover ou mudar o nível de H1/H2 | Apresente a mudança exata e aguarde aprovação explícita antes de aplicá-la. |
| Renomear qualquer heading existente, inclusive H3+ | Peça aprovação explícita. |
| Criar subtópicos H3+ ou rótulos em negrito dentro de uma seção existente | Pode fazer sem aprovação adicional quando previsto no plano inicial e coerente com a seção mãe. |
| Outras reorganizações de H3+ | Descreva no plano e siga as aprovações aplicáveis; não altere a estrutura superior nem nomes de headings sem aprovação. |
| Criar documento novo | Proponha o esqueleto H1/H2 e aguarde sua aprovação antes de escrever o documento. |

Uma solicitação genérica como “melhore a organização” não é aprovação de uma mudança estrutural específica. Se o usuário já autorizou expressamente a mudança exata, não peça a mesma aprovação de novo. Quando a mudança surgir depois do plano, apresente a revisão e aguarde a decisão necessária. Não simule uma seção principal com negrito ou H3 para contornar esse gate.

Use a estrutura existente. O exemplo tem título da tarefa, Solicitação, Análise, Solução, Apêndices, Testes, Homologação e Produção; isso não obriga a acrescentar todas essas seções a outro documento. Análise e Solução podem estar reunidas se essa for a estrutura aprovada, mantendo ambas as responsabilidades no conteúdo.

## 3. Escrever o estado da entrega

- **Solicitação:** preserve o sentido e a autoria do pedido. Não acrescente requisitos reconstruídos como se fizessem parte da solicitação original.
- **Análise:** explicite necessidades, restrições, interfaces e critérios de aceite confirmados. Explique o problema a resolver, sem diário da investigação nem justificativas retrospectivas apresentadas como fatos.
- **Solução:** descreva o resultado final, decisões relevantes, funcionamento e uso necessário para compreender a entrega. Conecte a solução às necessidades da Análise. Inclua detalhes operacionais pertinentes; não reduza o texto a uma lista de arquivos alterados.
- **Testes:** registre somente evidência disponível, distinguindo teste executado, inspeção estática, confirmação manual do desenvolvedor e validação pendente. Respeite qualquer pedido específico de preservar esta seção.
- **Homologação e Produção:** preserve integralmente o conteúdo existente, inclusive placeholders e notas, salvo autorização explícita para alterar essas seções. Não preencha resultados por inferência. Em documento novo, mantenha apenas os campos manuais previstos no esqueleto aprovado, sem inventar evidências.
- **Apêndices:** use se existentes ou aprovados. Links e anexos complementam, mas não substituem a explicação necessária no corpo.

Mantenha planos, checkpoints, tentativas, commits e histórico da implementação nos registros internos definidos pelo projeto. Procedimentos operacionais de uso da entrega podem ter passos; o que não pertence ao documento final é a cronologia do trabalho do agente.

## 4. Conferir conteúdo e legibilidade

- Confira afirmações contra as fontes atuais antes de documentar contratos. Em divergências, relate a evidência e pergunte pela decisão pertinente em vez de escolher silenciosamente uma regra de negócio.
- Explique pré-requisitos, configuração, modos de uso, acessos, atualização, efeitos e limitações quando fizerem parte da entrega. Não acrescente uma checklist Docker a tarefas de outra natureza.
- Em comandos, informe repositório/diretório, pré-condições, placeholders e efeito esperado. Respeite a sintaxe do shell indicado. Ofereça variantes de plataforma quando exigidas pelo contexto; não invente suporte.
- Não execute comandos operacionais apenas para escrever exemplos. Documentar um deploy, uma migração ou uma integração não autoriza executá-los. Use as permissões e o plano aplicáveis.
- Documentação de um repositório deve ser útil a quem clonou só aquele repositório. Explicite relações externas por URL, sem depender implicitamente de workspace pai. Quando a tarefa abranger vários repositórios, identifique o dono e o contexto de cada operação.
- Escreva em português técnico direto, com detalhe proporcional à complexidade. Use tabelas para comparações/contratos, listas para requisitos e parágrafos para explicações. Não imponha quantidade de itens ou extensão iguais ao exemplo.
- Evite repetição dentro do documento. Referências não devem obrigar o leitor a abrir arquivos ou o chat para entender a solução; use URLs explícitas para recursos externos quando disponíveis.
- Não exponha credenciais nem dados sensíveis em texto, exemplos ou evidências.

## 5. Verificar e entregar

1. Compare o inventário e a ordem de headings antes/depois; confira que qualquer alteração protegida tem aprovação explícita. Revise manualmente a hierarquia, ignorando `#` dentro de blocos de código.
2. Confira a preservação de Homologação e Produção e de outras partes marcadas como manuais.
3. Confira se a Análise distingue necessidade confirmada de inferência e se a Solução explica como a entrega a atende.
4. Revise comandos, caminhos, links, termos, versões e coerência com as fontes. Diferencie verificação documental de execução funcional. Build concluído, cópia de artefato ou processo ativo não comprovam homologação.
5. Revise o diff e cumpra as verificações do plano. Não acrescente afirmações de sucesso sem evidência; informe falhas e verificações não executadas com seu impacto.
6. No resumo ao desenvolvedor, diga o que foi atualizado, quais fontes e verificações sustentam o conteúdo e quais decisões/evidências faltam. Faça commits somente conforme autorização e política aplicáveis. Não publique nem altere arquivos Google sem pedido e permissões específicos.

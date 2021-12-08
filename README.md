# Plano de Testes Sprint 6 PBCompasso



# Introdução 
Nosso projeto foi dividido em 3 partes, a primeira foi cenários de front-end foi solicitado criar sobre a dotz, dotz é um programa de fidelidade cada compra que você faz em seus parceiros rende dotz, que podem ser trocados por produtos, passagens aéreas, pagamento de contas e muito mais, foi realizado cenários de teste em cadastro, login, adicionar ao carrinho e filtro/busca tanto para cenários positivos quanto negativos, a segunda parte foi cenários em back-end na lojinha API criada por Júlio de Lima, foi realizado teste em todas rodas com cenários positivos e negativos para verificar a consistência API e a terceira parte foi para reportarmos 5 incidentes em sites e 2 melhorias, esse relatório está disponibilizado no jira.



# Pessoas envolvidas 

| *Função*|  *Pessoa envolvida*  |  *Responsabilidades especificas*  |
| :---: | :---: |:---:|
|  Cenários de front-end Gherkin |  Gabriel Santos Rodrigues | •	Cenários positivos e negativos para cadastro e login.•	Cenários positivos e negativos para adicionar ao carrinho.•	Cenários de filtro/busca.|
|  Cenários de back-end e Gherkin |  Gabriel Santos Rodrigues | •	Testes na aba ‘tests’ do POSTMAN.•	Organizadas em coleções e pastas.•	Documentação gerada pelo Postman, escrita na linguagem do Gherkin.•	Documentação gerada pelo Newman.•	Deverá estar no GIT privado.•	Mínimo de 6 cenários diferentes.| 
|  Reports de Incidentes | Gabriel Santos Rodrigues  | •	Descrever 5 bugs.•	Propor 2 melhorias,•	Reportados em uma ferramenta de gerenciamento de QA.| 




# Funcionalidades ou Módulos a serem testados 

| *Front-end DOTZ*|  *Comportamento esperado*  |  *Verificações*  |
| :---: | :---: |:---:|
|Cadastro|Ao criar conta deve ser aceito somente dados válidos e os que não forem válidos deverá indicar qual campo está incorreto para que possa ser corrigido, após criar a conta ser direcionado para aba inicial da loja.|•	Verificar quais campos são obrigatórios.•	Verificar se qualquer caráter é aceito.•	Exibir mensagem de confirmação de registro.|
|Login|Ao fazer login na minha conta me permite ter acesso a mesma.|•	Login com sucesso•	Verificar com usuário é inválido•	Verificar com senha é inválida•	Verificar se todos campos são obrigatórios.|
|Adicionar ao carrinho|Ao adicionar ao carrinho verificar se foi adicionado certo, permitir fazer alterações no carrinho.|•	Verificar adicionar ao carrinho•	Verificar remover do carrinho•	Fazer verificações no carrinho não estando logado•	Fazer verificações no carrinho estando logado|
|Filtro/Busca|Ao fazer a filtragem mostrar somente os resultados que estão dentro da mesma.|•	Verificar se pode fazer qualquer tipo de combinação nas filtragens.•	Verificar se mostra apenas filtros escolhidos.|


| *Back-end LOJINHA API*|  *Comportamento esperado*  |  *Verificações*  |
| :---: | :---: |:---:|
|Usuário|Criar novo usuário preenchendo todos campos com valores válidos e não preenchendo com valores válidos apresentar quais estão errados, logar com login e senha válidos caso contrário mostrar que são inválidos e excluir usuário.|•	Criar usuário com valores válidos.•	Criar usuário com valores inválidos.•	Logar com valores válidos.•	Logar com valores inválidos.•	Excluir usuário com id válido.•	Excluir usuário com id inválido.|
|Produto|Adicionar novos produtos com valores válidos e avisar quando os mesmos não forem, buscar por produtos, buscar por id não sendo aceito valores para id inválido, editar o produto por id não aceitando valores para id inválido e excluir o produto por id não aceitando valores para id inválido.|•	Criar produto com valores válidos.•	Criar produto com valores inválidos.•	Buscar produtos.•	Buscar produtos por id.•	Buscar produtos por Id inválido.•	Editar produto por id.•	Editar produtos por id inválido.•	Excluir produtos por id.•	Excluir produtos por id inválido.|
|Componentes|Adicionar novos componentes com valores válidos e avisar quando os mesmos não forem, buscar componentes, buscar componentes por id não aceitando valores para id inválido, editar componentes por id não aceitando valores para id inválido e excluir componentes por id não aceitando valores para id inválido.|•	Criar componentes com valores válidos.•	Criar componentes com valores inválidos.•	Buscar componentes•	Buscar componentes por id.•	Buscar componentes por id inválido•	Editar componentes por id.•	Editar componentes por id inválido.•	Excluir componentes por id.•	Excluir componentes por id inválido|

# Local de teste 
  Home office.
  
# Ferramentas 

|  |    |
| :---: | :---: |
| Cenários de front-end Gherkin  |  Visual Studio Code  |
|  Cenários de back-end |  Postman |
|  Reports de Incidentes |  Jira |
|  Gerenciamento do projeto |  Microsoft Word e Microsoft Excell |
|  Monitoramento de tarefas |  Jira |
|  Guardar a documentação |  Github |

# Objetivos e prioridades 
As prioridades do plano de teste dentro do Front-end é:
  •	Mapear cenários na linguagem gherkin positivos e negativos para cadastro, login, adicionar ao carrinho e filtro/busca.
As prioridades do plano de teste dentro do Back-end é:
  •	Mapear no mínimo 6 cenários contendo tests e linguagem gherkin as funcionalidades devem estar organizadas em pastas e a documentação final deve ser apresentada no github.
As prioridades do plano de teste dentro do report de incidentes é:
  •	Descrever no mínimo 5 bugs e 2 melhorias, onde os sites é de escolha dos alunos do plano de bolsas e apresentado em alguma ferramenta de gerenciamento de QA as descrições devem conter: nome do site, versão que encontrou o bug, plataforma, prioridade, severidade, status, título, descrição tipo de report, screenshot.

# Como os resultados do teste serão divulgados 
  A documentação dos tópicos um e dois estará disponível no github privado e o tópico três estará no jira, no final da sprint será apresentado no formato pitch.
  
# Cronograma / Marcos do projeto 

| *Tarefas*  |  *Data de inicio*  |*Data de conclusão*|
| :---: | :---: |:---:|
|  Plano de teste |  29 de novembro |30 de novembro|
|  Plano de teste para cenários de front-end |  30 de novembro |02 de Dezembro|
|  Plano de teste para back-end |  02 de Dezembro |06 de Dezembro|
|  Reports de Incidentes |  06 de Dezembro |07 de Dezembro|
|  Regras para o Pitch |  08 de Dezembro |08 de Dezembro|
|  Revisão Geral |  09 de Dezembro |09 de Dezembro|
|  Apresentação |  10 de Dezembro |10 de Dezembro|

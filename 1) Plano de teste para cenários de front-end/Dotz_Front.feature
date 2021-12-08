    Cenário: Cadastro DOTZ
        Dado que esteja na página dotz
        Quando seleciono cadastrar
        E Digitar o CPF "<cpf>"
        E selecionar os li e concordo "<liConcordo>"
        E Digitar numero de telefone "<telefone>"
        E Digitar código do sms "<sms>" 
        E Digitar nome completo "<nomeCompleto>" 
        E Digitar data de nascimento "<datNasc>" 
        E Digitar e-mail "<email>" 
        E Digitar senha "<senha>" 
        E Digitar confirmação de senha "<confSenha>" As senhas devem ser iguais
        Então deverá retornar "<retorno>"  Seu cadastro foi finalizado :)
            Exemplos:
            | cpf      | liConcordo | telefone | sms      | nomeCompleto | datNasc  | email    | senha    | confSenha | retorno                                                                          |
            | inválido | --         | --       | --       | --           | --       | --       | --       | --        | --                                                                               |
            | válido   | inválido   | --       | --       | --           | --       | --       | --       | --        | --                                                                               |
            | válido   | válido     | inválido | --       | --           | --       | --       | --       | --        | O campo código é obrigatório                                                     |
            | válido   | válido     | válido   | inválido | --           | --       | --       | --       | --        | O campo código é obrigatório                                                     |
            | válido   | válido     | válido   | válido   | inválido     | --       | --       | --       | --        | O campo nome é obrigatório                                                       |
            | válido   | válido     | válido   | válido   | válido       | inválido | --       | --       | --        | O campo data de nascimento é obrigatório. Preencha uma data de nascimento válida |
            | válido   | válido     | válido   | válido   | válido       | válido   | inválido | --       | --        | O campo email é obrigatório                                                      |
            | válido   | válido     | válido   | válido   | válido       | válido   | válido   | inválido | --        | --                                                                               |
            | válido   | válido     | válido   | válido   | válido       | válido   | válido   | válido   | inválido  | As senhas devem ser iguais                                                       |
            | válido   | válido     | válido   | válido   | válido       | válido   | válido   | válido   | válido    | Seu cadastro foi finalizado :)                                                   |

    Cenário: Login DOTZ
        Dado que esteja na página dotz
        Quando seleciono Entrar
        E Digitar o CPF "<cpf>"
        E Digitar a senha "<senha>"
        E Digitar dia de nascimento "<diaNasc>"
        Então deverá retornar "<retorno>"
            Exemplos:
            | cpf      | senha    | diaNasc  | retorno                                          |
            | inválido | --       | --       | --                                               |
            | válido   | inválido | válido   | Senha inválida. Você tem X tentativas.           |
            | válido   | válido   | inválido | Parte da data de nascimento informada é inválida |
            | válido   | válido   | válido   | https://www.dotz.com.br/                         |


Funcionalidade: Adicionar ao carrinho
    Cenário: Logado
        Dado que esteja Logado.
        E que esteja na página loja
        Quando Selecionar o produto
        E Selecionar em adicionar ao carrinho
        E Selecionar em fechar pedido
        E Digitar token "<token>" 
        E Digitar CEP "<cep>" 
        E Digitar número "<num>" 
        E Digitar Apelido do Endereço "<apelido>" 
        E Digitar Nome "<nome>"
        E Digitar Sobrenome do destinatário "<sobrenome>" 
        E Selecionar Métodos de entrega "<entrega>" 
        E Selecionar forma de pagamento "<pagamento>" Verifique se você preencheu todos os campos obrigatórios e corrigiu todas as entradas inválidas.
        Então deverá retornar "<retorno>"
            Exemplos:
            | token    | cep      | num      | apelido  | nome     | sobrenome | entrega  | pagamento | retorno                                                                                          |
            | inválido | --       | --       | --       | --       | --        | --       | --        | Token é obrigatório                                                                              |
            | válido   | inválido | --       | --       | --       | --        | --       | --        | Informe um CEP/Código postal válido.                                                             |
            | válido   | válido   | inválido | --       | --       | --        | --       | --        | O número é obrigatório.                                                                          |
            | válido   | válido   | válido   | inválido | --       | --        | --       | --        | O identificador é obrigatório                                                                    |
            | válido   | válido   | válido   | válido   | inválido | --        | --       | -         | O nome é obrigatório.                                                                            |
            | válido   | válido   | válido   | válido   | válido   | inválido  | --       | -         | O sobrenome é obrigatório.                                                                       |
            | válido   | válido   | válido   | válido   | válido   | válido    | inválido | --        | Verifique se você preencheu todos os campos obrigatórios e corrigiu todas as entradas inválidas. |
            | válido   | válido   | válido   | válido   | válido   | válido    | válido   | inválido  | Verifique se você preencheu todos os campos obrigatórios e corrigiu todas as entradas inválidas. |
            | válido   | válido   | válido   | válido   | válido   | válido    | válido   | válido    | Compra Finalizada                                                                                |


    Cenário: Deslogado
        Dado que esteja na página loja
        Quando Selecionar o produto
        E Selecionar em adicionar ao carrinho
        E Selecionar em fechar pedido
        Então deverá retornar para aba de login
        
    

Funcionalidade: Pesquisa por filtos 
    Cenário: Celulares
        Dado que esteja na página loja
        E selecionar pesquisa Celulares
        Quando selecionar o filto da Categoria "<categoria>"
        E selecionar o filto do Intervalo de preços "<intDePreco>"
        E selecionar o filto da Marca "<marca>"
        E selecionar o filto da Média de Avaliações "<medAvaliacoes>"
        E selecionar o filto da Quantidade de Avaliações "<qtdAvaliacoes>"
        E selecionar o filto da Cor "<cor>"
        E selecionar o filto da Entregue por "<entregue>"
        E selecionar o filto da Voltagem "<voltagem>"
        Então deverá exibir apenas resultados selecionados
            Exemplos:
            | categoria          | intDePreco             | marca   | medAvaliacoes | qtdAvaliacoes | cor    | entregue | voltagem |
            | iPhone             | R$0,00  -  R$99.999,99 | Apple   | 5.0           | --            | Branco | --       | --       |
            | Android            | R$0,00  -  R$99.999,99 | --      | 2.5           | 1             | Azul   | --       | Bivolt   |
            | Kindle / E-Reader  | --                     | --      | 3.5           | --            | Rosa   | Magalu   | --       |
            | Peças para Celular | --                     | --      | --            | --            | Prata  | --       | --       |
            | Smartwatches       | R$0,00  -  R$99.999,99 | Samsung | 5.0           | 1             | --     | --       | --       |

    Cenário: Eletrodomésticos
        Dado que esteja na página loja
        E selecionar pesquisa eletrodomésticos
        Quando selecionar o filto da Categoria "<categoria>"
        E selecionar o filto do Intervalo de preços "<intDePreco>"
        E selecionar o filto da Marca "<marca>"
        E selecionar o filto da Média de Avaliações "<medAvaliacoes>"
        E selecionar o filto da Quantidade de Avaliações "<qtdAvaliacoes>"
        E selecionar o filto da Cor "<cor>"
        E selecionar o filto da Entregue por "<entregue>"
        E selecionar o filto da Voltagem "<voltagem>"
        Então deverá exibir apenas resultados selecionados
            Exemplos:
            | categoria                | intDePreco                | marca      | medAvaliacoes | qtdAvaliacoes | cor          | entregue | voltagem |
            | Adega                    | R$0,00  -  R$99.999,99    | Electrolux | --            | --            | Preto / Inox | --       | 220v     |
            | Cooktop                  | R$2.000,00  -  R$2.999,99 | Fischer    | --            | --            | --           | --       | Bivolt   |
            | Ventilador               | --                        | Mallory    | 0.0           | 0.0           | Preto        | --       | 110v     |
            | Geladeira / Refrigerador | R$3.000,00  -  R$3.999,99 | Samsung    | --            | --            | Prata / Inox | --       | --       |
            | Coifa e Depurador de Ar  | R$0,00  -  R$99.999,99    | Suggar     | 0.0           | 0.0           | Vermelho     | --       | --       |

    Cenário: Eletroportáteis
        Dado que esteja na página loja
        E selecionar pesquisa eletrodomésticos
        Quando selecionar o filto da Categoria "<categoria>"
        E selecionar o filto do Intervalo de preços "<intDePreco>"
        E selecionar o filto da Marca "<marca>"
        E selecionar o filto da Média de Avaliações "<medAvaliacoes>"
        E selecionar o filto da Quantidade de Avaliações "<qtdAvaliacoes>"
        E selecionar o filto da Cor "<cor>"
        E selecionar o filto da Entregue por "<entregue>"
        E selecionar o filto da Voltagem "<voltagem>"
        Então deverá exibir apenas resultados selecionados
            Exemplos:
            | categoria                     | intDePreco             | marca      | medAvaliacoes | qtdAvaliacoes | cor          | entregue | voltagem |
            | Aspiradores e Acessórios      | R$0,00  -  R$99.999,99 | Electrolux | --            | --            | Azul         | --       | 220v     |
            | Liquidificadores e Acessórios |                        | Philips    | 5.0           | --            | Preto        | --       | --       |
            | --                            | --                     | Multilaser | --            | --            |              | --       | 12v      |
            | Centrífugas de Alimentos      | --                     | --         | --            | 1.0           | Preto / Inox | --       | --       |
            | Ferro a Vapor                 | R$0,00  -  R$99.999,99 | Electrolux | --            | --            | Azul         | --       | 220v     |
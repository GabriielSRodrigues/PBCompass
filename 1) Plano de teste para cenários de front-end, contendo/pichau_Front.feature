
Funcionalidade: Filtro de monitores
    Cenário: 
        Dado que esteja na página /monitores
        Quando seleciono o filto do Preço "<preco>"
        E seleciono o filto do Fabricante "<fabricante>"
        E seleciono o filto do Tamanho de Tela "<tamanhoDeTela>"
        E seleciono o filto do Resolução "<resolucao>"
        E seleciono o filto do Tipo de painel "<tipoDePainel>"
        E seleciono o filto do Frequência do monitor "<freqDoMonitor>"
        E seleciono o filto do Tempo de resposta "<tempoDeResposta>"
        E seleciono o filto do Conexões "<conexoes>"
        Então deverá exibir apenas resultados selecionados
            Exemplos:
                | preco            | fabricante | tamanhoDeTela | resolucao | tipoDePainel | freqDoMonitor | tempoDeResposta | conexoes     |
                | R$ 0 - R$3450    | Pichau     | 25" ~ 31.9"   | 1600x900  | IPS          | 144Hz         | 4 ms            | DVI          |
                | R$ 1800 - R$2000 | Acer       | 20" ~ 24.9"   | 1280x720  | TN           | 240Hz         | Maior que 5 ms  | HDMI         |
                | R$ 300 - R$3500  | Benq       | 14" ~ 15,6"   | 1920x1080 | IPS          | 60Hz          | 3 ms            | Display Port |
                | R$ 100 - R$4300  | HP         | 32" ~ 39.9"   | 1280x800  | VA           | 100Hz         | Menor que 1 ms  | VGA          |
                | R$ 0 - R$5000    | Philips    | Maior que 40" | 3440x1440 | TN           | 75Hz          | 1 ms            | HDMI         |


Funcionalidade: Dúvidas frequentes
    Cenário:
        Dado que esteja na página /atendimento
        Quando selecionar a dúvida "<duvida>"
        Então deverá abrir uma nova aba referente a duvida "<duvidaAba>"
            Exemplos:
                | duvida                                   | duvidaAba                                                                                                 |
                | Dúvidas sobre Cadastro                   | https://sac.pichau.com.br/support/solutions/articles/22000258226-d%C3%BAvidas-sobre-cadastro              |
                | Dúvidas sobre Entrega                    | https://sac.pichau.com.br/support/solutions/articles/22000258224-d%C3%BAvidas-sobre-entrega               |
                | Duvidas Sobre Garantia/RMA Peças         | https://sac.pichau.com.br/support/solutions/articles/22000258223-duvidas-sobre-garantia-rma-pecas         |
                | Como acionar a garantia da minha compra? | https://sac.pichau.com.br/support/solutions/articles/22000228084-como-acionar-a-garantia-da-minha-compra- |
                | Dúvidas sobre o Pedido                   | https://sac.pichau.com.br/support/solutions/articles/22000258221-d%C3%BAvidas-sobre-o-pedido              |


Funcionalidade: Criar conta
    Cenário:
        Dado que esteja na página /account
        Quando preencher o nome "<nome>"
        E preencher o sobrenome "<sobrenome>"
        E preencher o cadastrar como "<cadastrarComo>"
        E preencher o CPF "<cpf>"
        E preencher o Rg "<rg>"
        E preencher o e-mail "<email>"
        E preencher o senha "<senha>"
        E Aceitar termos de aceite e politicas de privacidade "<termo>"
        Então deverá dar a mensagem "<conta>"
            Exemplos:
                | nome     | sobrenome | cadastrarComo   | cpf            | rg           | email                      | senha     | termo | conta                                                       |
                | Beatriz  | Silva     | Pessoa Fisica   | 082.947.020-48 | ---          | beasilva@gmail.com         | ---       | True  | Senha é obrigatório                                         |
                | ---      | Brasil    | Pessoa Juridica | 017.826.240-40 | 22.786.893-6 | fabbrasil@hotmail.com      | 321654987 | True  | Nome é obrigatório                                          |
                | Brian    | Afonso    | Pessoa Juridica | 307.806.070-58 | 34.650.917-8 | b.afonso@gmail.com         | 555666    | False | Você deve aceitar os termos da Pichau para criar sua conta. |
                | Fernando | Pessoa    | Pessoa Fisica   | ---            | 46.795.011-8 | pessoafernando@outlook.com | 15987     | True  | CPF em formato inválido                                     |
                | Pedro    | ---       | Pessoa Fisica   | 012.740.730-81 | 37.224.091-4 | pedro@gmail.com            | teste123  | True  | Sobrenome é obrigatório                                     |



Funcionalidade: Pesquisa menu lateral
    Cenário:
        Dado que esteja na página home
        E que esteja com o menu lateral aberto
        E que esteja com hardware selecionado
        Quando selecionar a pesquisa "<pesquisa>"
        Então deverá retornar a aba referente a pesquisa "<pesquisaAba>"
            Exemplos:
                | pesquisa                      | pesquisaAba                                                      |
                | PLACA MÃE                     | https://www.pichau.com.br/hardware/placa-m-e                     |
                | MEMÓRIAS                      | https://www.pichau.com.br/hardware/memorias                      |
                | GABINETE                      | https://www.pichau.com.br/hardware/gabinete                      |
                | PASTA TÉRMICA E REFRIGERANTES | https://www.pichau.com.br/hardware/pasta-termica-e-refrigerantes |
                | DRIVE ÓPTICO                  | https://www.pichau.com.br/hardware/drive-optico                  |


Funcionalidade: Mudar senha
    Cenário:
        Dado que esteja logado
        E que esteja na aba /account
        Quando selecionar mudar senha
        E preencher e-mail "<email>" 
        E preencher nova senha "<novaSenha>"                              
        E preencher confirmar senha "<confSenha>"
        Então deverá retornar "<retorno>"
            Exemplos:
            | email    | novaSenha | confSenha | retorno                                            |
            | Inválido | 123456    | 123456    | Você não pode alterar a senha do e-mail informado. |
            | Válido   | 123456    | 654321    | Senhas não são iguais!                             |
            | Válido   | 123456    | 123456    | https://www.pichau.com.br/account                  |


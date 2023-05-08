            #language: pt

            Funcionalidade: tela de configuração
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: que ao clicar em um produto da loja

            Cenário: Seleções de cores, tamanho e quantindades devem ser obrigatórias
            Quando o usuario visualizar  as configurações do produto deve possuir: Seleção de cores, tamanhose e quantidade
            E o usuario consiga configurar esses intens
            Então para depois inserir o produto no carrinho

            Cenário:  Deve permitir apenas 10 produtos por venda
            Quando o usário clicar em adicionar mais produtos
            E adiciona mais de 10 produtos
            Então Deve aparecer uma mensagem: "Só é permitido 10 produtos por venda"

            Cenário: Validação do Botão "limpar"
            Quando o usuário clicar no botão "limpar"
            Então deve voltar ao estádo original antes da implemnetação de configuração feita pelo o usuario.

            Cenário: Validar cliente sem cadastro na EBAC-SHOP
            Quando o usário sem cadastro clicar em algum produto da loja
            Então deve ser redirecionado para tela de login ou cadastro para continuar com a compra

            Esquema do Cenário: Seleção de cor, tamanho e quantidade válidos
            Quando eu selecionar a <cor>
            E o <tamanho>
            E a <quantidade>
            Então deve ser emitido uma mensagem "Produto adicionado no carrinho"

            Exemplos:
            | Cor    | tamanho | quantidade | mensagem                         |
            | "rosa" | "M"     | "3"        | "Produto adicionado no carrinho" |
            | "azul" | "G"     | "8"        | "Produto adicionado no carrinho" |
            | "rosa" | "PP"    | "5"        | "Produto adicionado no carrinho" |
            | "rosa" | "XG"    | "3"        | "Produto adicionado no carrinho" |

            Esquema do Cenário: Permitir apenas 10 produtos por venda
            Quando o usuario selecionar a <cor>
            E o <tamanho>
            E a <quantidade> for maior que 10 por produto
            Então deve ser emitido uma mensagem "Só é permitido 10 produtos por venda"

            Exemplos:

            | Cor     | tamanho | quantidade | mensagem                               |
            | "rosa"  | "M"     | "11"       | "Só é permitido 10 produtos por venda" |
            | "azul"  | "G"     | "10"       | "Produto adicionado no carrinho"       |
            | "preto" | "PP"    | "13"       | "só é permitdo 10 produtos por venda"  |

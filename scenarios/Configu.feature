            #language: pt

            Funcionalidade: tela de configuração
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: dado que ao clicar em um produto da loja

            Cenário: Validar a marcação dos itens obrigatórios
            Quando o usuario queira finalizar sua compra sem marcar as opções de: cor, tamanho e quantidade
            Então deve aparecer uma mensagem de alerta por ser itens obrigatórios


            Cenário: Validação do Botão "limpar"
            Quando o usuário clicar no botão "limpar"
            Então deve voltar ao estádo original antes da implemnetação de configuração feita pelo o usuario.

            Cenário: Validar cliente sem cadastro na EBAC-SHOP
            Quando o usário sem cadastro clicar em algum produto da loja
            Então deve ser redirecionado para tela de login ou cadastro para continuar com a compra


            Esquema do Cenário: Permitir apenas 10 produtos por venda
            Quando o usuario selecionar a <quantidade> de <produto> e for <maior que 10>
            Então deve ser emitido uma mensagem "Só é permitido 10 produtos por venda"

            Exemplos:

            | produto   | quantidade | maior que 10 | mensagem de alerta                     |
            | "blusa"   | "10"       | "não"        | "Produto adicionado no carrinho"       |
            | "vestido" | "14"       | "sim"        | "Só é permitido 10 produtos por venda" |
            | "camisa"  | "8"        | "não"        | "Produto adicionado no carrinho"       |

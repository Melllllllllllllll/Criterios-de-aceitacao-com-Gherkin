            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:Dado quando o usuário logar no site da EBAC-SHOP

            Cenário: Validar autenticação inválidas 
            Quando ele inserir seu login "maria@@#ebac.com"
            E senha "mari@ebc125"
            Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Esquema do Cenário: Autenticação Válida 
            Quando ele inserir seu <login> e <senha> que sejam validos
            Então deve ser retornado uma <mensagem> para tela de checkout

            Exemplos:
            | login               | senha      | mensagem           |
            | "ana@ebac.com.br"   | "@ebac123" | "Tela de checkout" |
            | "maria@ebac.com.br" | '122@ebac" | "Tela de checkout" |







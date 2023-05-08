            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado quando o usuário logar no site da EBAC-SHOP

            Cenário: Autenticação de dados válidos
            Quando ele inserir o login "mell@ebac.com.br"
            E a senha "mel@123"
            Então deve ser direcionado para tela de checkout

            Cenário: Autenticação de dados inválidos
            Quando ele inserir o login "melebac.com.br"
            E a senha "mel@123"
            Então deve aparecer uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuario sem autenticação de cadastro
            Quando ele inserir login "mell@gmail.com"
            E a senha "mell@123"
            Então deve aparecer uma mensagem de alerta "Usuário sem cadastro na EBAC-SHOP"


            Esquema do Cenário: Validar autenticação válidos
            Quando ele inserir <usuario> e <senha>
            Então deve ser direcionado para <tela> de checkout

            Exemplos:
            | Usuário               | senha       | tela               |
            | "maria@ebac.com.br"   | "senha4569" | "tela de checkout" |
            | "joão@ebac.com.br"    | "senha7889" | "tela de checkout" |
            | "isadora@ebac.com.br" | "senha4556" | "tela de checkout" |



            Esquema do Cenário: Validar autenticação inválidas
            Quando ele inserir <usuario>  e <senha>
            Então deve  exibir uma <mensagem> de erro

            Exemplos:
            | usuário               | senha       | mensagem                            |
            | "mellu@ebac.com.br"   | "senha3236" | "Usuário ou senha inválidos"        |
            | "lucsasa@ebac.com.br" | "$%%#"      | "Usuário ou senha inválidos"        |
            | "pedro@gmail.com.br"  | "ml323654"  | "Usuário sem cadastro na EBAC-SHOP" |

            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:Dado quando o usuário logar no site da EBAC-SHOP



            Esquema do Cenário: Validar acesso na plataforma da EBAC-SHOP
            Quando ele inserir os dados que sejam <validos> ou <invalidos>
            Então deve retornar: direcionado para <tela de checkout> ou <usuario ou senha invalidos>

            Exemplos:
            | Usuário             | senha       | tela                         |
            | "maria@ebac.com.br" | "senha4569" | "tela de checkout"           |
            | "joão@@ebac.com.br" | "senha7889" | "usuario ou senha invalidos" |






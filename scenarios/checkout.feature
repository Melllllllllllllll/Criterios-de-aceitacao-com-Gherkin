            #language: pt

            Funcionalidade: Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado quando cliente clicar no cadastro para finalizar sua compra



            Esquema do Cenário: Validar cadastro obrigatório que estão com asteriscos
            Quando o <cliente> preencher todos os <campos que possui astersicos>
            Então sua <compra> deve ser permitida

            Exemplos:
            | cliente               | campos que possui asteriscos |  | compra             |
            | "juliana@ebac.com.br" | "campos preenchidos"         |  | "compra permitida" |
            | "lucas@ebac.com.br"   | "campoos não preenchidos"    |  | "compra negada"    |


            Esquema do Cenário:Validar a mesnagem de alerta para o cadastro com campos vázios
            Quando o <cliente> deixar alguns <campos> vazios
            Então deve ser emitido uma <menssagem de alerta>

            Exemplos:
            | cliente             | Campos                     | mensagem de alerta         |
            | "ana@ebac.com.br"   | "campo vazio"              | "campo não pode ser vazio" |
            | "maria@ebac.com.br" | "todos campos preenchidos" | "cadastro realizado"       |


            Esquema do Cenário: Validar autenticação inválidas
            Quando ele inserir <e-mail>  e <senha> com dados invalidos
            Então deve  exibir uma <mensagem> de erro

            Exemplos:
            | usuário               | senha       | mensagem                            |
            | "mellu@ebac.com.br"   | "senha3236" | "usuário ou senha inválidos"        |
            | "lucsasa@ebac.com.br" | "$%%#"      | "usuário ou senha inválidos"        |
            | "pedro@gmail.com.br"  | "ml323654"  | "usuário sem cadastro na EBAC-SHOP" |
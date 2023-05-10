            #language: pt

            Funcionalidade: Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado quando cliente clicar no casdatro para finalizar sua compra



            Esquema do Cenário: Validar cadastro obrigatório que estão com asteriscos
            Quando o <cliente> preencher todos os <campos> que possui astersicos
            Então só deve <finalizar sua compra> caso todos os <campos obrigatorios com asteriscos> esteja preenchidos

            Exemplos:
            | cliente               | campos obrigatórios com asteriscos | finalizar compra |
            | "juliana@ebac.com.br" | "todos preenchidos"                | "sim"            |
            | "maria@ebac.com.br"   | "Alguns campos vazios"             | "Não"            |
            | "lucas@ebac.com.br"   | "todos os campos preenchidos"      | "sim"            |


            Esquema do Cenário:Validar a mesnagem de alerta para o cadastro com campos vázios
            Quando o <cliente> deixar alguns <campos vazios>
            Então deve ser emitido uma <menssagem de alerta>

            Exemplos:
            | cliente             | Campos vazios | mensagem de alerta     |
            | "ana@ebac.com.br"   | "Sim"         | "Possui campos vazios" |
            | "bia@ebac.com.br"   | "Não"         | "Não"                  |
            | "bruno@ebac.com.br" | "Sim"         | "Possui campos vazios" |

            Esquema do Cenário: Validar autenticação inválidas
            Quando ele inserir <e-mail>  e <senha> com dados invalidos
            Então deve  exibir uma <mensagem> de erro

            Exemplos:
            | usuário               | senha       | mensagem                            |
            | "mellu@ebac.com.br"   | "senha3236" | "Usuário ou senha inválidos"        |
            | "lucsasa@ebac.com.br" | "$%%#"      | "Usuário ou senha inválidos"        |
            | "pedro@gmail.com.br"  | "ml323654"  | "Usuário sem cadastro na EBAC-SHOP" |
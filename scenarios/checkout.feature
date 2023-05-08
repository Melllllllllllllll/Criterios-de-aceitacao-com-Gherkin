            #language: pt

            Funcionalidade: Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:quando o cliente clicar no casdatro para finalizar sua compra

            Cenário: Validar cadastro obrigatórios que estão com asteriscos
            Quando o cliente não preencher todos os campos que possui asteriscos
            Então só deve finalizar sua compra caso todos os campos obrogatórios esteja preenchidos

            Cenário: Retorno de mensagem para campos de e-mail inválido
            Quando preencher o input do e-mail com dados inválidos
            Então deve ser exibido uma mensagem de erro para o cliente na tela

            Cenário: Validar a mesnagem de alerta para o cadastro com campos vázios
            Quando o cliente deixar de preencher alguns campos
            Então deve ser exibido uma mensagem de alerta



            Esquema do Cenário: Validar cadastro obrigatório que estão com asteriscos
            Quando o <cliente> preencher todos os <campos> que possui astersicos
            Então só deve <finalizar sua compra> caso todos os <campos obrigatorios com asteriscos> esteja preenchidos

            Exemplos:
            | cliente               | campos obrigatórios com asteriscos | finalizar compra |
            | "juliana@ebac.com.br" | "todos preenchidos"                | "sim"            |
            | "maria@ebac.com.br"   | "Alguns campos vazios"             | "Não"            |
            | "lucas@ebac.com.br"   | "todos os campos preenchidos"      | "sim"            |

            Esquema do Cenário:Retorno de mensagem para campos de e-mail inválido
            Quando preencher o input do <e-mail> com <dados invalidos>
            Então deve ser exibido uma <mensagem de alerta>

            Exemplos:
            | "e-mail"           | dados inválidos | mensagem de alerta |
            | "luisa@@.com"      | "Sim"           | "formato inválido" |
            | "joao@ebac.com.br" | "não"           | "não"              |
            | "anaebac.com"      | "Sim"           | "formato inválido" |

            Esquema do Cenário:Validar a mesnagem de alerta para o cadastro com campos vázios
            Quando o <cliente> deixar alguns <campos vazios>
            Então deve ser emitido uma <menssagem de alerta>

            Exemplos:
            | cliente             | Campos vazios | mensagem de alerta     |
            | "ana@ebac.com.br"   | "Sim"         | "Possui campos vazios" |
            | "bia@ebac.com.br"   | "Não"         | "Não"                  |
            | "bruno@ebac.com.br" | "Sim"         | "Possui campos vazios" |
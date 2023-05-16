            #language: pt

            Funcionalidade: Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado quando cliente clicar no cadastro para finalizar sua compra



            Esquema do Cenário: Validar cadastro obrigatório que estão com asteriscos
            Quando o cliente preencher os campos que possui asteriscos: <nome>, <sobrenome>, <pais>, <cidade>, <telefone> e <e-mail>
            Então sua <compra> deve ser finalizada

            Exemplos:
            | Nome  | Sobrenome | país   | cidade    | telefone | e-mail                  | compra     |
            | Ana   | maria     | Brasil | fortaleza | 89384320 | ana.maria@ebac.com.br   | finalizada |
            | lucas | pedro     | Brasil | teresina  | 89657325 | lucas.pedro@ebac.com.br | Finalizada |




            Esquema do Cenário:Validar a mesnagem de alerta para o cadastro com campos vázios
            Quando o cliente deixar um dos seguintes campos vazios: <nome>, <sobrenome>, <pais>, <cidade>, <telefone> e <e-mail>
            Então deve ser emitido uma <menssagem de alerta>

            Exemplos:
            | Nome | Sobrenome | país   | cidade         | telefone | e-mail                  | mensagem de alerta   |
            | Bia  | Medeiros  | Brasil | Belo Horizonte | 99884573 |                         | possui campos vazios |
            | João | Aguiar    | Brasil |                | 98453254 | joao.aguiar@ebac.com.br | possui campos vazios |
            

            Cenário: Validar mensagem de erro para e-mail inválidos 
            Quando ele preencher o campo e-mail é esteja com formato inválidos 
            Então deve ser emitido uma mensagem de erro 

         
           
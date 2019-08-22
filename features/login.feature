#language: pt

Funcionalidade: Login
    Para que eu possa anunciar meus veículos
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu email e senha

    Contexto: Form de Login
        Dado que eu acessei a página de Login

    @smoke @logut
    Cenário: Login do usuário
        Quando faço login com 
        	| nome  | Andrielle       |
		    | email | eu@andrielle.io |
		    | senha | abc123          |
        Então sou autenticado com sucesso

    @tentativa_login
    Esquema do Cenário: Tentar logar
        Quando faço login com 
            | email | <email> |
		    | senha | <senha> |
        Então devo ver a seguinte mensagem de "<alerta>"

        Exemplos:
        | email                      | senha  | alerta                        |
        | padre.kevedo@nokziste.org  | 123456 | Usuário e/ou senha inválidos. |
        | eu@andrielle.io            | xyz123 | Usuário e/ou senha inválidos. |
        | eu@andrielle.com           |        | Senha não informada.          |
        |                            | 123456 | Email não informado.          |
        | teste#teste.com            |        | Email inválido.               |
        
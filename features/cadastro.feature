#language: pt

Funcionalidade: Cadastro do usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veiculo usado

@sprint1 @smoke @logout
Cenário: Cadastro simples
	Dado que estou na página de cadastro
	Quando faço o meu cadastro com
		| nome  | Andrielle           |
		| email | teste4@teste.com.br |
		| senha | 123456              |
	Então sou autenticado com sucesso

Esquema do Cenário: Tentativa de Cadastro
	Dado que estou na página de cadastro
	Quando faço o meu cadastro com
		| nome  | <nome>  |
		| email | <email> |
		| senha | <senha> |
	Então devo ver a mensagem "<alerta>"

	Exemplos: 
	  | nome      | email            | senha  | alerta                                  |
      | Andrielle | eu#andrielle.io  | 123456 | Email inválido.                         |
      | Andrielle | eu@andrielle.net |        | Senha não informada.                    |
      |           | eu@andrielle.com | 123456 | Nome não informado.                     |
      | Andrielle | eu@andrielle.com | 123    | Senha deve ter pelo menos 6 caracteres. |
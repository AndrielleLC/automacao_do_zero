#language: pt

Funcionalidade: Anunciar meu carro
    Para que eu possa receber ofertas de compra
    Sendo um usuário cadastrado
    Posso anunciar meu veículo

    Contexto: Formulario de anuncio
        Dado que acessei o formulário e anúncio de veículos

    @login @logout
    Cenário: Criar anúncio
        E que possuo o seguinte veículo
            | marca     | modelo | versao  | ano  | preco      |
		    | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
		Quando faço o anúncio deste veículo
        Então devo ver a seguinte mensagem:
         """
         Parabéns. Seu carro foi anunciado com sucesso.
         """

    @login @logout
     Cenário: Carro blindado
        E que possuo o seguinte veículo
            | marca | modelo | versao  | ano  | preco     |
		    | Honda | Fit    | CVT     | 2012 | 30.000,00 |
        E este veículo é blindado
        Quando faço o anúncio deste veículo
        Então devo ver a seguinte mensagem:
         """
         Não vendemos carro blindado.
         """
    @login @logout
    Cenário: Anunciar duplicado
        E que possuo o seguinte veículo
            | marca     | modelo | versao         | ano  | preco      |
		    | Ford      | Fusion | 2.4 automático | 2016 | 70.000,00  |
        Mas eu já cadastrei este anuncio anteriormente
		Quando faço o anúncio deste veículo
        Então devo ver a seguinte mensagem:
         """
         Este anúncio já foi cadastrado.
         """


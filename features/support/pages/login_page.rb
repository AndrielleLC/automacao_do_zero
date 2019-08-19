class LoginPage
    include Capybara::DSL

    def faz_login(email,senha)
        find('input[type=text]').set email
        find('input[type=password]').set senha
        click_button 'Entrar'
    end

    # def validar_autenticacao
    #     within('form[id=login]') do
    #         expect(find('.alert').text).to eql mensagem_alerta
    #     end
    # end

    def msg_alerta
        within('form[id=login]') do
            return find('.alert').text
        end
    end
end
class Nav 
    include Capybara::DSL

    def vai_para_login
        click_link 'Acessar'
    end
    
    def menu_usuario
        within('.navbar') do
            return find('#userMenu')
        end
    end

    def sair
        menu_usuario.click
        click_link 'Sair'
    end
end
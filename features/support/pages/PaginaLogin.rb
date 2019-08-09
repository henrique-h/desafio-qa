class PaginaLogin
  include Capybara::DSL
    def preenche_campos
        find(DATA['campo_email']).set(DATA['login_usuario'])
        find(DATA['campo_password']).set(DATA['login_senha'])
    end

    def realiza_login
        find(DATA['btn_login']).click
    end

    def valida_login
      assert_selector(DATA['label_usuario'],visible: true, wait: 60)
    end
end

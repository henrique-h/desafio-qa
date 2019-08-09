require 'selenium-webdriver'

Before do |scn|
  @login = PaginaLogin.new
  @cadastro_room = PaginaCadastroRooms.new
  @api = PaginaApi.new


  if @tag = scn.source_tag_names
    if scn.source_tag_names.include?("@login") || scn.source_tag_names.include?("@cadastra_room")
      Capybara.current_session.driver.browser.manage.delete_all_cookies
      page.driver.quit
      Capybara.page.driver.browser.manage.window.maximize
    end
  end

end

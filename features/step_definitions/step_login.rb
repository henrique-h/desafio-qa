Dado("que tenha acessado o site") do
  visit(DATA['url_site'])
  assert_selector(DATA['btn_login'])
end

Dado("preencha o campo email e password com um usuario valido") do
  @login.preenche_campos
end

Dado("clico no botão LOGIN") do
  @login.realiza_login
end

Dado("valido o login com sucesso") do
  @login.valida_login
end

Dado("que eu esteja logado") do
  visit(DATA['url_site'])
  assert_selector(DATA['btn_login'])
  @login.preenche_campos
  @login.realiza_login
  @login.valida_login
end

#language: pt

Funcionalidade: Fazer o login com sucesso

@login
Cenario: Realizar Login
  Dado que tenha acessado o site
  E preencha o campo email e password com um usuario valido
  Quando clico no botão LOGIN
  Entao valido o login com sucesso

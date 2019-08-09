#language: pt

Funcionalidade: Fazer o login e realizar cadastro de um novo Room no site com sucesso

Contexto:
  Dado que eu esteja logado

@cadastra_room
Cenario: Fazer o cadastro de um novo Room
  E que tenha preenchido todos os campos das abas General e Amenities e finalizado
  Entao valido que o cadastro foi feito com sucesso

E("que tenha preenchido todos os campos das abas General e Amenities e finalizado") do
  @cadastro_room.abre_pagina_cadastro_room
  @cadastro_room.seleciona_tipo_quarto
  @cadastro_room.preenche_campo_descricao
  @cadastro_room.preenche_form_diversos
  @cadastro_room.preenche_amenidades
end

Entao("valido que o cadastro foi feito com sucesso") do
  @cadastro_room.finaliza_cadastro
end

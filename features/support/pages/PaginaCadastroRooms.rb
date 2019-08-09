class PaginaCadastroRooms
  include Capybara::DSL
  def abre_pagina_cadastro_room
    find('a',exact_text: 'HOTELS').click
    find('a',exact_text: 'ADD ROOM').click
  end

  def gera_numero_randomico
    rand(1..200)
  end

  def seleciona_tipo_quarto
    all(DATA['label_inicial_room_type'])[0].click
    cont = all(DATA['label_selecionavel_room_type']).count - 1
    opcao = rand(0..cont)
    all(DATA['label_selecionavel_room_type'])[opcao].click
  end

  def preenche_campo_descricao
    assert_selector(DATA['campo_descricao'])
    find(DATA['campo_descricao']).click.send_keys(:enter)
    find(DATA['campo_descricao']).click.send_keys("Definindo uma descricao")
  end

  def preenche_form_diversos
    find(DATA['campo_preco']).set(gera_numero_randomico)
    find(DATA['campo_quantidade']).set(gera_numero_randomico)
    find(DATA['campo_estadia_minima']).set(gera_numero_randomico)
    find(DATA['campo_adultos']).set(gera_numero_randomico)
    find(DATA['campo_criancas']).set(gera_numero_randomico)
    find(DATA['campo_camas_extras']).set(gera_numero_randomico)
    find(DATA['campo_camas_extras_taxas']).set(gera_numero_randomico)
  end

  def preenche_amenidades
    find("a",exact_text: 'Amenities').click

    total_amenities = all(DATA['label_check_amenidades']).count - 2
    array = (1..total_amenities).to_a
    total_selecionados = rand(1..total_amenities)

    contador_array = 0
    while total_selecionados >= contador_array
      all(DATA['label_check_amenidades'])[array.sample].click
      contador_array += 1
    end
  end

  def finaliza_cadastro
    find(DATA['btn_submit']).click
    assert_selector(DATA['label_mensagem_sucesso'])
  end
end

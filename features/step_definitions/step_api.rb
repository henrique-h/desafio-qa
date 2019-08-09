Dado("que eu faça um get no endpoint para retornar o title dos results") do
    url = "https://swapi.co/api/films/"
    metodo = "GET"
    @response = @api.realiza_requisicao(metodo,url)
end

E("valido o status code da resposta do servico") do
    @api.valida_status_code(@response)
end

Entao("exibo o titulo de cada filme retornado") do
    @api.printa_todos_resultados(@response)
end

Entao("exibo o titulo apenas dos filmes que contenham {string} como diretor e {string} como produtor") do |diretor,produtor|
    @api.printa_resultados_especificos(@response,diretor,produtor)
end
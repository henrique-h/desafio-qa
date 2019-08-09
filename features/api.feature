#language: pt

Funcionalidade: Realizar um GET para o servico e exibir filmes especificos

@api @todos
Cenario: Exibir o conteúdo do campo "title" de cada elemento da estrutura "results"
  Dado que eu faça um get no endpoint para retornar o title dos results
  E valido o status code da resposta do servico
  Entao exibo o titulo de cada filme retornado

@api @especifico
Cenario: Exibir o conteúdo do campo "title" de cada elemento da estrutura "results"
  Dado que eu faça um get no endpoint para retornar o title dos results
  E valido o status code da resposta do servico
  Entao exibo o titulo apenas dos filmes que contenham "George Lucas" como diretor e "Rick McCallum" como produtor
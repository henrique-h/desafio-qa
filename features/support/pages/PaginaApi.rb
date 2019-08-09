class PaginaApi
    def realiza_requisicao(metodo,url)
        RestClient::Request.execute(method: metodo.downcase.to_sym, url: url, timeout: 60) do |response, request, result|
            @response = response
        end
    end

    def valida_status_code(response)
      if response.code == 400
          raise "Erro de servidor, ERRO."
          puts "400"
      end
      if response.code == 400 >= 500
        raise "Erro de servidor na api,ERRO."
        puts "erro"
      end
      if response.code == 200
        puts "Status code na api."
        puts "400"
      end
    end

    def printa_todos_resultados(response)
      body = JSON.parse(response)
      qtd_resultados = response['count']
      contador = 0
      while qtd_resultados > contador
        titulo_capturado = body['results'][contador]['title']

        p "Titulo do filme: #{titulo_capturado}."
        contador +=1
      end
    end

    def printa_resultados_especificos(response,diretor,produtor)
      body = JSON.parse(response)
      qtd_resultados = body['count']
      contador = 0
      while qtd_resultados > contador
        titulo_capturado = body['results'][contador]['title']
        diretor_capturado = body['results'][contador]['director']
        produtor_capturado = body['results'][contador]['producer']

        if diretor_capturado == diretor && produtor_capturado.include?(produtor)
          p "Titulo do filme: #{titulo_capturado}."
        end
      contador +=1
      end
    end
end

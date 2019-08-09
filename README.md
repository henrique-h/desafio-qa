# Arquitetura do projeto

O projeto utiliza a ferramenta Cucumber com a sintaxe Gherkin para escrita dos BDD's e codificação, escrita em Ruby, baseada no padrão Page Object de desenvolvimento.

## Dependências
- Ruby
- DevKit
- Gem Cucumber
- Gem Bundler

## Configuração de ambiente

1. Instalando o Ruby
	- Para instalar o Ruby baixe o instalador acessando a página oficial https://rubyinstaller.org/downloads/ e instalar a versão 2.5.5 com a versão adequada do seu sistema operacional e arquitetura (x86 (32bits) ou x64 (64bits))
		- Execute o arquivo baixado, selecione o idioma da instalação e clique em Ok.
		- Selecione a opção "I accept the License" e clique em Next.
		- Marque as 3 caixas de seleção e clique em Install.
		- Finalize a instalação clicando em Finish.
	
Para validar o sucesso da instalação podemos executar no terminal o comando:

```
ruby -v
```

2. Instalando o Dev Kit
	- Para instalar o Dev Kit baixe o instalador acessando a página oficial https://rubyinstaller.org/downloads/ e escolha a versão adequada conforme a instalação do passo anterior.
		- Abra o executável e selecione a pasta onde foi instalado o Ruby.
		- Crie uma pasta chamada `devkit` e extraia os arquivos dentro dela.
		- Abra um prompt de comando e navegue até a pasta criada. 
		- Digite o comando `ruby dk.rb init` e logo em seguida `ruby dk.rb install`

3. Instalando as Gems

Para instalar as gems digite no terminal o comando `gem install bundler`, navegue até a o diretório do projeto e envie o comando `bundle install`


## Execução

Apenas um ambiente foi configurado mas poderíamos alterar entre eles facilmente utilizando a variável de ambiente durante o comando:

```
  cucumber ambiente=dev
```

Para execução de algum cenário específico utilizamos as tags:
```
  cucumber -t "@cenario"
```

Os cenários disponíveis são:
```
  @api
  @login
  @cadastra_room
```

Após a conclusão dos testes na pasta `data\reports` será gerado um arquivo `report` contendo os resultados.



### Contato
Estou aberto a sugestões, elogios, críticas ou qualquer outro tipo de comentário.
 - email: hbraga.franco@gmail.com

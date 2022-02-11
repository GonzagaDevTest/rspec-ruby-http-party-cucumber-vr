# rspec-ruby-http-party-cucumber-vr

Este projeto tem por objetivo realizar testes de api utilizando o Ruby com rspec, http-party e cucumber.
Conforme arquivo [spec/vrpat_spec.rb](https://github.com/GonzagaDevTest/rspec-ruby-http-party-cucumber-vr/blob/main/spec/vrpat_spec.rb) temos um exemplo de como realizar uma requisição do tipo GET na api: https://portal.vr.com.br/api-web/comum/enumerations/VRPAT e printar um objeto aleatório retornado pela Api.

### Explicando o código

```ruby
describe 'Desafio de consumir api VRPAT' do
it 'Consultar todos VRPAT' do
		# Esta linha abaixo executa a request GET 
        @vrpatData = PortalApi.get('/comum/enumerations/VRPAT')
		
		# Valida se o status code do response é igual a 200
        expect(@vrpatData.code).to eq(200)
		
		# Valida se a quantidade de objetos typeOfEstablishmentos é diferente de 0
        expect(@vrpatData['typeOfEstablishment'].length).not_to eq(0)
		
		# Gera um índice randômico conforme a quantidade de objetos typeOfEstablishmentos
        @randomIndex = rand(1..@vrpatData['typeOfEstablishment'].length)
		
		# Captura o objeto typeOfEstablishment do índice randômico gerado
        @vrpat = @vrpatData['typeOfEstablishment'][@randomIndex]
		
        puts 'Consulta aleatória do [tipo de estabelecimento]'
        puts "Status code:#{ @vrpatData.code}"
        puts "Quantidade de objetos typeOfEstablishment: #{@vrpatData['typeOfEstablishment'].length}"
        puts "Mostrando objeto typeOfEstablishment de índice: #{@randomIndex}"
        puts @vrpat
    end
end
```

### Como executar?

#### Instalando dependências

Aprincipal dependencia deste projeto é o ruby, para instala-lo pode ser seguido a documentação: https://www.ruby-lang.org/pt/documentation/installation/

Verifique se o bundler está instalado, caso não esteja execute:

`$ gem install bundler`

Com o ruby e o bundler instalado em sua máquina basta executar o seguinte comando na raiz do projeto:

`$ bundle install`

Com isso será instalada todas as dependências necessárias para executar o projeto. Para executar basta utilizar o seguinte comando na raiz do projeto:

`$ rspec`
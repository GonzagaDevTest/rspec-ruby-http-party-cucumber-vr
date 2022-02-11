describe 'Desafio de consumir api VRPAT' do
    it 'Consultar todos VRPAT' do
        @vrpatData = PortalApi.get('/comum/enumerations/VRPAT')
        expect(@vrpatData.code).to eq(200)
        expect(@vrpatData['typeOfEstablishment'].length).not_to eq(0)
        @randomIndex = rand(1..@vrpatData['typeOfEstablishment'].length)
        @vrpat = @vrpatData['typeOfEstablishment'][@randomIndex]
        puts 'Consulta aleatória do [tipo de estabelecimento]'
        puts "Status code:#{ @vrpatData.code}"
        puts "Quantidade de objetos typeOfEstablishment: #{@vrpatData['typeOfEstablishment'].length}"
        puts "Mostrando objeto typeOfEstablishment de indice: #{@randomIndex}"
        puts @vrpat
    end
end
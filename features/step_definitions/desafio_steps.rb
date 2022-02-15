
Given('que o usuário realizou uma requisição do tipo get na api {string}') do |api|
    $vrpat_data = PortalApi.get(api)
  end
  
  When('a resposta retonou o status {int}') do |status|
    expect($vrpat_data.code).to eq(status)
  end
  
  Then('devo validar um objeto aleatório') do
    expect($vrpat_data['typeOfEstablishment'].length).not_to eq(0)
    @randomIndex = rand(1..$vrpat_data['typeOfEstablishment'].length)
    @vrpat = $vrpat_data['typeOfEstablishment'][@randomIndex]
    puts 'Consulta aleatória do [tipo de estabelecimento]'
    puts "Status code:#{$vrpat_data.code}"
    puts "Quantidade de objetos typeOfEstablishment: #{$vrpat_data['typeOfEstablishment'].length}"
    puts "Mostrando objeto typeOfEstablishment de indice: #{@randomIndex}"
    puts @vrpat
  end
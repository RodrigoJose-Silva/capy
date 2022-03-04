
describe 'Caixas de seleção', :checkbox do

    before(:each) do # executará este comando antes dos casos de testes
        visit'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor') # marcando o checkbox através do atributo do tipo ID
    end

    it 'desmarcando uma opção' do
        uncheck('antman') # desmarcando um opção atributo do tipo NAME
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true) # localizando o elemento através do CSS usando o tipo e atributo valor, quando o mesmo não tiver ID ou NAME
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set(false) # localizando o elemento através do CSS usando o tipo e atributo valor, quando o mesmo não tiver ID ou NAME
    end

    after(:each) do
        sleep 3 #apenas para ver a seleção durante a automação
    end

end
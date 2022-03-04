
describe 'Botões de Radio (Radio Button)', :radio do

    before(:each) do # executará este comando antes dos casos de testes
        visit'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Seleção por ID' do
        choose('cap') # selecionando o elemento através do atributo ID
    end

    it 'Seleção por find e CSS selector' do
        find('input[value=guardians]').click # neste ex localiza atraves do CSS e manda clicar
    end

    after(:each) do
       sleep 3 #apenas para ver a seleção durante a automação
    end

end
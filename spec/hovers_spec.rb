
describe 'Mouse Hover', :hovers do

    before(:each) do # executará este comando antes dos casos de testes
        visit'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt=Blade]') # atribuindo o elemento atraves do CSS na variável
        card.hover # chamandao a função "hover" no elemento

        expect(page).to have_content 'Nome: Blade' # validando a exibição do texto 'Nome: Blade' na page
    end

    it 'quando passo p mouse sobre o Pantera Negra' do
    card = find('img[alt=Pantera Negra]') # atribuindo o elemento atraves do CSS na variável
    card.hover # chamandao a função "hover" no elemento

    expect(page).to have_content 'Nome: Pantera Negra' # validando a exibição do texto 'Nome: Blade' na page
    end

    after(:each) do
        sleep 2 #apenas para ver a seleção durante a automação
    end

end
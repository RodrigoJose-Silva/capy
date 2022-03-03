

describe 'Forms' do

    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'  # buscando elemento pelo atributo ID
        fill_in 'password', with: 'jarvis!' # buscando elemento pelo atributo NAME

        click_button 'Login' # buscando o elemento pelo TIPO 'button' e apontando o VALOR DO NOME

        expect(find('#flash').visible?).to be true # Verifica se o elemento é visível e verdadeiro

        # expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!' #devido a função 'to eql', a validação foi FALHA devido conter o texto "Olá, Tony Stark. Você acessou a área logada!\n×"  ///utilizado quando o texto for identico
        
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!' #neste caso, o INCLUDE tem a função de CONTAINS no texto

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' #utilizando recurso do CAPYBARA, no qual verifica se a STRING CONTAINS no ELEMENTO
    end

    it 'senha incorreta' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'  # buscando elemento pelo atributo ID
        fill_in 'password', with: 'test123' # buscando elemento pelo atributo NAME

        click_button 'Login' # buscando o elemento pelo TIPO 'button' e apontando o VALOR DO NOME

        expect(find('#flash').visible?).to be true # Verifica se o elemento é visível e verdadeiro

        expect(find('#flash').text).to include 'Senha é invalida!' #neste caso, o INCLUDE tem a função de CONTAINS no texto

        expect(find('#flash')).to have_content 'Senha é invalida!' #utilizando recurso do CAPYBARA, no qual verifica se a STRING CONTAINS no ELEMENTO
    end

    it 'usuário não cadastrado' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'spiderman'  # buscando elemento pelo atributo ID
        fill_in 'password', with: 'jarvis!' # buscando elemento pelo atributo NAME

        click_button 'Login' # buscando o elemento pelo TIPO 'button' e apontando o VALOR DO NOME

        expect(find('#flash').visible?).to be true # Verifica se o elemento é visível e verdadeiro
        
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!' #neste caso, o INCLUDE tem a função de CONTAINS no texto

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!' #utilizando recurso do CAPYBARA, no qual verifica se a STRING CONTAINS no ELEMENTO
    end
end
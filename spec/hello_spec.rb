
describe 'Meu primeiro scrpit' do
    it 'visitar a página' do
        visit 'https://training-wheels-protocol.herokuapp.com/'
        expect(page.title).to eql "Training Wheels Protocol"  #comando para validar o titulo da página
    end
end
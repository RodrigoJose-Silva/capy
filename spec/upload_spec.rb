describe 'Upload', :upload do

    before(:each) do # executará este comando antes dos casos de testes
        visit'https://training-wheels-protocol.herokuapp.com/upload'

        # variáveis de acesso a massa de arquivos
        @arquivo = Dir.pwd + '/spec/fixtures/Métricas.txt'# variável declarada como instancia incluindo o "@" antes, ".pwd" método que retorna o caminho do diretório de execução do projeto 
        @imagem = Dir.pwd + '/spec/fixtures/cnh-digital.jpg'
    end

    it 'upload com arquivo texto' do
        # puts @arquivo # imprime no console o diretório do arquivo
        # puts @imagem

        attach_file('file-upload', @arquivo) # comando de anexar + atributo do ID + argumento variável com o @
        click_button 'Upload' # comando de clique através do atributo "Value"

        div_arquivo = find('#uploaded-file') # guardando o arquivo em uma variável pelo atributo ID
        expect(div_arquivo.text).to eql 'Métricas.txt' # efetuando validação do arquivo
    end

    it 'upload com imagem', :imagem do
        # puts @arquivo # imprime no console o diretório do arquivo
        # puts @imagem

        attach_file('file-upload', @imagem) # comando de anexar + atributo do ID + argumento variável com o @
        click_button 'Upload' # comando de clique através do atributo "Value"

        #sleep 5 # temporizado para que carregue a imagem antes de efetuar a validação abaixo, configurado tempo de carregamento do elemento no arquivo "spec_helper.rb"
            
        img = find('#new-image') # guardando o arquivo em uma variável pelo atributo ID
        expect(img[:src]).to include 'uploads/cnh-digital.jpg' # efetuando validação da imagem através do 'include = que tem a função de CONTÉM', "img" por ser um elemento do CAPYBARA, pode-se complemtar a consulta com outro atributo do elemento
    end

        after(:each) do
       sleep 3 #apenas para ver a seleção durante a automação
    end

end
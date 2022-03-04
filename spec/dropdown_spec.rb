

describe 'Caixa de opções', :dropdown do # definindo uma TAG específica para esta suite / cenário de teste

    it 'item especifico simples' do # com elemento ID
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Bucky', from: 'dropdown') # selecionando o valor contido na lista, do (from:) elemento de ID da lista
        sleep 3 #apenas para ver a seleção durante a automação
    end

    it 'item específico com o find' do # com elemento CSS selector
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') # localizndo um elemento através do CSS selector e atribuindo a uma variável
        drop.find('option', text: 'Scott Lang').select_option # efetuando pesquisa através do tipo de elemento da lista, e selecionando através do texto/valor
        sleep 3 #apenas para ver a seleção durante a automação
    end

    it 'qualquer item' , :sample do # com elemento CSS selector
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') # localizndo um elemento através do CSS selector e atribuindo a uma variável
        drop.all('option').sample.select_option # pegar todos os valores e selecionar apenas um da lista de forma randomica
        sleep 3 #apenas para ver a seleção durante a automação
    end

end
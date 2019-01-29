Quando("entro no iframe e preencho os campos") do
  visit '/mudancadefoco/iframe'
  #primeiro acha o elemento do iframe para mapear
  #como está especificando o within, pode passar sem # ou .
  within_frame('id_do_iframe') do
    #agora iremos fazer as ações dentro do iframe
    fill_in(id: 'first_name', with: 'Bruno')
    fill_in(id: 'last_name', with: 'Batista')
    sleep(3)
  end
end

Quando("entro no modal e verifico o texto") do
  visit '/mudancadefoco/modal'
  #vai abrir o modal e vai validar o modal com algum texto encontrado no modal
  #usando o within puro, por isso usando o css tem que colocar # para id e . para class
  #abrindo e fechando o modal
  find('a[href="#modal1"]').click
  within('#modal1') do
    texto = find('h4')
    expect(texto.text).to eql 'Modal Teste'
    sleep(2)
    find('.modal-close').click
  end
end
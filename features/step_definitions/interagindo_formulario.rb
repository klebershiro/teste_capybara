Quando("eu faco o cadastro") do
  visit '/users/new'
  #preenchendo com fill in
  fill_in(id: 'user_name', with: 'Bruno')
  #passando com find e set, o hash abaixo significa id
  find('#user_lastname').set('Batista')
  #o ultimo modo de poder preencher é com o find e send_keys
  find('#user_email').send_keys('xpto@gmail.com')
  fill_in(id: 'user_address', with: 'avenida xpto')
  find('#user_university').set('universidade')
  find('#user_profile').send_keys('programador')
  fill_in(id: 'user_gender', with: 'masculino')
  find('#user_age').set('33')
  sleep(2)
  #para clicar - a busca abaixo esta pelo css
  find('input[value="Criar"]').click
end

Então("verifico se fui cadastrado") do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end
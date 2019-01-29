Quando("eu cadastro usuario") do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'Bruno')
  find('#user_lastname').set('Batista')
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

Então("verifico se o usuario foi cadastrado") do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end

Quando("edito um usuario") do
  sleep(3)
  find('.btn.waves-light.blue').click
end

Então("verifico se o usuario foi editado") do
  
end
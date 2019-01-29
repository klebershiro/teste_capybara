Quando("eu usar teclado") do
  visit '/users/new'
  #fazendo ação de ir até a página e apertar no teclado a tecla page down
  find('#user_name').send_keys(:page_down)
  sleep(3)
  #ação de baixo irá apertar a tecla enter no botão "criar"
  find('input[value="Criar"]').send_keys(:enter)
  sleep(3)
end
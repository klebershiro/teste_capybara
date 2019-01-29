Quando("clico em um determinado botao") do
  visit '/buscaelementos/botoes'
  find('#teste').click
end

Entao("verifico se o texto desapareceu da tela") do
  #os comandos abaixo verificam se os textos estão na tela
  @texto = find('#div1')
  expect(@texto.text).to eql 'Você Clicou no Botão!'
  page.assert_text(text, 'Você Clicou no Botão!')
  page.has_text?('Você Clicou no Botão!')
  have_text('Você Clicou no Botão!')
  sleep(3)
  #comando abaixo faz o click para o texto sumir
  find('#teste').click
  assert_no_text(text, 'Você Clicou no Botão!')
  has_no_text?('Você Clicou no Botão!')
  sleep(3)
end
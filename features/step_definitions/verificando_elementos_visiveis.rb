Quando("clico no botao") do
  visit '/buscaelementos/botoes'
  find('#teste').click
end

Entao("verifico se o texto apareceu na tela com sucesso") do
  #exemplo abaixo de achar no tradicional
  @texto = find('#div1')
  expect(@texto.text).to eql 'Você Clicou no Botão!'
  #exemplo abaixo de achar no assert_text
  page.assert_text(text, 'Você Clicou no Botão!')
  #exemplo abaixo de achar no has_text?
  page.has_text?('Você Clicou no Botão!')
  #exemplo abaixo de achar no have_text?
  have_text('Você Clicou no Botão!')
end
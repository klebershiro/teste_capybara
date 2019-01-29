Quando("clico em botoes") do
  visit '/'
  click_on('Começar Automação Web') #é igual a click_link_or_button
  visit '/buscaelementos/botoes'
  click_button(class: 'btn waves-light')
  #busca elemento e depois clica nele
  find('a[onclick="ativaedesativa2()"]').click
  #duplo clique
  find('a[onclick="ativaedesativa2()"]').double_click
  #clique com o botao direito do mouse
  find('a[onclick="ativaedesativa3()"]').right_click
  visit '/'
  #clicando em um link
  click_link(href: 'https://github.com/brunobatista25')
  sleep(5)
end
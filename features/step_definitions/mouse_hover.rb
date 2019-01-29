Quando("seleciono o mouse hover") do
  visit '/iteracoes/mousehover'
  find('.activator').hover
  sleep(3)
  #tem a opção de clicar tb, comando abaixo
  #find('activator').hover.click
end
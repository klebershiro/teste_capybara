Quando("eu uso um script") do
  visit '/outros/scroll'
  #abaixo vamos executar o script e fazer rolar para abaixo.
  page.execute_script("window.scrollBy(0, 1500)")
  sleep(3)
  #qd se quer executar um script que retorne um valor no terminal (ex 4+4), inserir como abaixo
  #após a execução do page.execute_script
  #@result = page.evaluate_script('4 + 4');
  #puts @result
end
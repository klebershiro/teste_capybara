Quando("eu entro na janela e verifico a mensagem") do
  visit '/mudancadefoco/janela'
  #criando uma função para mapear a abertura da janela e mudando de foco
  janela = window_opened_by do
    click_link 'Clique aqui'
  end
  #mudou de foco para a janela, trabalhando na janela abaixo e verificando se a janela foi aberta
  within_window janela do
    #comparando se a url é igual a mensagem, reconfirmando se abriu a janela correta
    expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
    sleep(3)
    #para fechar a janela
    janela.close
    sleep(3)
  end
  #segunda opção (pode fazer dessa forma tb)
  #o comando abaixo vai para a última aba aberta
  #comando window.last
  click_link 'Clique aqui'
  switch_to_window windows.last
  expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
  @mensagem = find('.red-text.text-darken-1.center')
  expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
  sleep(3)
  #para fechar a janela dessa nova forma
  windows.last.close

end

Quando("eu entro no alert e verifico faco a acao") do
  visit '/mudancadefoco/alert'
  #procurar o elemento a ser clicado
  find('button[onclick="jsAlert()"]').click
  sleep(3)
  #como no alert não dá para inspecionar para validar o click tem que inserir como abaixo
  page.accept_alert
  sleep(3)
  
  #clicando no botão cancelar do alert, qd tem OK ou Cancel, por exemplo
  find('button[onclick="jsConfirm()"]').click
  sleep(3)
  page.dismiss_confirm
  sleep(3)

  #preenchendo o prompt do alert
  find('button[onclick="jsPrompt()"]').click
  sleep(3)
  page.accept_prompt(with: 'Bruno Batista')
  sleep(3)
  #se quiser cancelar um prompt basta inserir page.dismiss_prompt 

end
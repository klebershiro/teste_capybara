Quando("quando eu marco um radiobox e um checkbox") do
  visit '/buscaelementos/radioecheckbox'
  #exemplo de checkbox
  find('label[for="white"').click
  #outro exemplo de checkbox, no ex abaixo só pelo id não dava pq não estava visível, por isso o allow_label_click
  check('purple', allow_label_click: true)
  sleep(3)
  #tirando a marcação do check
  uncheck('purple', allow_label_click: true)
  sleep(3)
  #comando para radiobox
  choose('red', allow_label_click: true)
  sleep(3)
end
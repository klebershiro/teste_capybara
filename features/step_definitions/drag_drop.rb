Dado("que eu estou na tela de drag and drop") do
  visit '/iteracoes/draganddrop'
end

Quando("movo o dragdrop") do
  #definindo o elemento/objeto que será movido
  @primeiro_elemento = find('#winston')
  #definindo o local que receberá o objeto
  @segundo_elemento = find('#dropzone')
  #movendo o elemento de um local para o destino
  @primeiro_elemento.drag_to(@segundo_elemento)
  sleep(3)
end
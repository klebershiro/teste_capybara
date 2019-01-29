Quando("interajo com dropdown e select") do
  visit '/buscaelementos/dropdowneselect'
  #fazendo dropdown, a classe abaixo estava separado btn dropdown-button, inserido "."
  find('.btn.dropdown-button').click
  #fazendo dropdown e selecionando a um item do dropdown
  find('#dropdown3').click
  #exemplo de select abaixo, tem que pegar o texto do elemento que quer selecionar
  select 'Chrome', from: 'dropdown'
  sleep(3)
  #outro forma de select
  find('option[value="2"]').select_option
  sleep(3)
end

Quando("preencho o autocomplete") do
  visit '/widgets/autocomplete'
  #exemplo de autocomplete, não é preciso preencher toda a palavra, ex abaixo
  find('#autocomplete-input').set 'Rio de Jan'
  #abaixo comando para clicar na opção que aparece
  find('ul', text: 'Rio de Janeiro').click
  sleep(3)
end
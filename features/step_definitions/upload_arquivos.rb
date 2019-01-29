Quando("eu faco um upload de um arquivo") do
  visit ('/outros/uploaddearquivos')
  #fazer o attach_file(mapear o caminho, passar o caminho do nome_do_arquivo, visivel_ou_naovisivel)
  #o arquivo tem que estar dentro do projeto na pasta feature
  #abaixo a opção 1
  #attach_file('upload', '', make_visible: true)

  #abaixo a opção 2 de como fazer. File.join concatena Dir.pwd fala o diretório que vc está
  #@foto = Foto.join(Dir.pwd, 'features/nome_do_arquivo')
  #attach_file('upload', @foto, make_visible: true)
end
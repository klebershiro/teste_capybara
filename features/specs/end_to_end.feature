#language: pt

@end_to_end
Funcionalidade: Testando o end to end

Cenario: Testar end to end
Quando eu cadastro usuario
Então verifico se o usuario foi cadastrado

Cenario: Editar com sucesso
Quando edito um usuario
Então verifico se o usuario foi editado
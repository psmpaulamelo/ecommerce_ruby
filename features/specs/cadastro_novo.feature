# language: pt


  # Cenários referente a novos cadastros de usuarios 

Funcionalidade: Cadastro novo de Usuário

 @acesso_site @cadastro_novo 
  Cenário: Cadastro de novo usuário
    Dado que inicio novo cadastro colocando um email nunca usado
    Então acesso a página de usuário

 @acesso_site @erro_email_existente 
  Cenário: Cadastro com email já cadastrado
    Quando tento usar um email já cadastrado anteriormente
    Então deve aparecer uma mensagem de erro

 @preenchimento_dados 
  Cenário: Completar cadastro de usuário
   Dado que inicio novo cadastro colocando um email nunca usado
   Quando  preencho meus dados pessoais
   Então crio uma nova conta com sucesso E sou direcionado para a página de usuário
  
 @preenchimento_endereco
  Cenário: Cadastrar endereço de entrega
   Dado que estou na area de logada do usuarios
   Então antes de fazer a minha compra incluo o meu endereço de entrega



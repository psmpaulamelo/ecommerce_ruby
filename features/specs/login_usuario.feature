# language: pt


# Cenários referente ao  login do usuário anteriormente criado 

Funcionalidade:  Login do usuário


  @login_sucesso 
  Cenário: Acessar login com sucesso
    Quando insiro o email e a senha correta
    Então acesso a área restrita do usuário

  

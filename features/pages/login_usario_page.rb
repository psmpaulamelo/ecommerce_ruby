#mapeamento dos elementos da pagina login de usuario ja cadastrado anteriormente


class LoginUsuarioPage < SitePrism::Page

  #usuario já cadastrado 
  element  :novo_email,                     '#email'
  element :nova_senha,                      '#passwd'
  element :btn_novo_user,                   '#SubmitLogin'
  
end
  

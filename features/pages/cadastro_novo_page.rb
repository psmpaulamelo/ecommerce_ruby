#mapeamento dos elementos da pagina login 
require 'faker'

class CadastroNovoPage < SitePrism::Page

 set_url '/index.php?controller=authentication&back=my-account'

  #novo registro 
  element :user,                            '#email_create'
  element :btn_acesso,                      '#SubmitCreate'

  #login user 
  element :email_login,                     '#email'
  element :senha_login,                     '#passwd'
  element :btn_login,                       '#SubmitLogin'


  #formulario de novo registro
  element :genero_user ,                    '#id_gender1'
  element :nome_user,                       '#customer_firstname'
  element :sobrenome_user ,                 '#customer_lastname'
  element :senha,                           '#passwd'
  element :dia,                             'select#days', visible: false
  element :mes,                             'select#months', visible: false
  element :ano,                             'select#years', visible: false

  element :btn_registro,                    '#submitAccount'


  #formulario de  novo endereço 
  element :btn_novo_endereco, :xpath,       '//a[@title="Addresses"]'
  element :btn_adicionar_endereco,   :xpath,       '//a[@title="Add an address"]'
  element :endereco,                        '#address1'
  element :cidade,                          '#city'
  element :estado,                          'select#id_state',visible: false     
  element :cep,                             '#postcode'
  element :telefone,                        '#phone'
  element :celular,                          '#phone_mobile'
  element :alias,                           '#alias'
  element :btn_endereco,                    '#submitAddress'
end


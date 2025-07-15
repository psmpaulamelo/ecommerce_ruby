require 'faker'
require 'pry'

module LoginUsuario


 def login_usuario_com_sucesso
    home.load
    home.btn_sign_in.click
    cadastro.load
    cadastro.email_login.set('qatestando@teste.com.br')
    cadastro.senha_login.set('qatestando')
    cadastro.btn_login.click
    fechar_popups_do_chrome
  end   
  
  def area_logada
    expect(page).to have_content('My account')
  end

  def email_errado
    home.load
    home.btn_sign_in.click
    cadastro.load
    cadastro.email_login.set('patolino@patolino.com.br')
    cadastro.senha_login.set('qatestando')
  end  

  def email_errado_input_vermelho
  puts page.html # Ver o HTML renderizado para debug
  expect(page).to have_css('div.form-error input#email')
  end



end

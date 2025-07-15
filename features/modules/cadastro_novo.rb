require 'faker'
require 'pry'

module CadastroNovo
  # Criação de novo usuário
  def criar_user
    home.load

    unless home.has_btn_sign_in?(wait: 10)
      save_and_open_screenshot
      raise 'Botão de login não encontrado na home'
    end

    home.btn_sign_in.click

    raise 'Campo de e-mail não encontrado' unless cadastro.has_user?(wait: 10)

    email_falso = Faker::Internet.email
    cadastro.user.set(email_falso)
    cadastro.btn_acesso.click

    unless cadastro.has_genero_user?(wait: 10)
      save_and_open_screenshot
      raise 'Formulário de novo usuário não carregado após clicar em "Criar conta"'
    end
  end

  def confirma_criacao_user
    using_wait_time 10 do
      within('form#account-creation_form') do
        expect(page).to have_content('YOUR PERSONAL INFORMATION', exact: false, normalize_ws: true)
      end
    end
  end



  # Preenchimento de dados do usuário
  def preencher_formulario
    puts "Página atual: #{page.current_url}"
    
    unless cadastro.has_genero_user?(wait: 10)
      save_and_open_screenshot
      raise 'Campo de gênero não encontrado no formulário'
    end
    cadastro.genero_user.click
    cadastro.nome_user.set(Faker::Name.first_name)
    cadastro.sobrenome_user.set(Faker::Name.last_name)
    cadastro.senha.set(Faker::Internet.password(min_length: 8))

    # Para que o select fique visivel os campos acima precisam ser validado com sucesso 

    unless page.has_css?('select#days', visible: false, wait: 30)
      save_and_open_screenshot
      raise 'Campo de dia não encontrado no formulário'
    end
    cadastro.dia.select('10',visible: :all)

    unless page.has_css?('select#months', visible: false, wait: 30)
      save_and_open_screenshot
     raise 'Campo de dia não encontrado no formulário'
    end
    cadastro.mes.select('May',visible: :all)
    
    unless page.has_css?('select#years', visible: false, wait: 30)
      save_and_open_screenshot
     raise 'Campo de dia não encontrado no formulário'
    end
    cadastro.ano.select('1990',visible: :all)
    
    cadastro.btn_registro.click

    unless page.has_content?('Welcome to your account', wait: 10)
      save_and_open_screenshot
      raise 'Cadastro não foi finalizado com sucesso'
    end
  end

  def cadastro_realizado
    expect(page).to have_content('Your account has been created.')
  end

  # Preenchimento de endereço para entrega e cobrança
  def preencher_endereco
    cadastro.load
    cadastro.email_login.set('qatestando@teste.com.br')
    cadastro.senha_login.set('qatestando')
    cadastro.btn_login.click
    fechar_popups_do_chrome

    expect(page).to have_content('My account')

    cadastro = CadastroNovoPage.new  # Reinstancia para evitar elementos obsoletos

    cadastro.btn_novo_endereco.click
    expect(page).to have_content('My addresses')

    cadastro.btn_adicionar_endereco.click  # Botão "Add a new address"

    cadastro.endereco.set('Rua das Flores, 123')
    cadastro.cidade.set('Piracicaba')
    unless page.has_css?('select#id_state', visible: false, wait: 30)
      save_and_open_screenshot
      raise 'Campo de dia não encontrado no formulário'
    end
    cadastro.estado.select('California') 
    cadastro.cep.set('90001')
    cadastro.telefone.set('(11) 1234-5678')
    cadastro.celular.set('(11) 98765-4321')
    cadastro.alias.set('Casa')

    cadastro.btn_endereco.click
  end



  # Casos de exceção
  def usar_email_cadastrado
    home.load
    home.btn_sign_in.click
    cadastro.user.set('patolino@gmail.com')
    cadastro.btn_acesso.click
  end

  def mensagem_erro_cadastro
    expect(page).to have_content(
      'An account using this email address has already been registered. Please enter a valid password or request a new one.'
    )
  end

  def endereco_cadastrado
    expect(page).to have_content('My addresses')
  end
  


end

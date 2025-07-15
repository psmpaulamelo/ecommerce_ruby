require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'webdrivers'
require 'faker'

require_relative 'helper.rb'
require_relative 'page_helper.rb'
require_relative 'hooks.rb'
require_relative '..\modules\cadastro_novo.rb'
require_relative '..\modules\login_usuario.rb'
require_relative'..\modules\compras_produto.rb'
require_relative '../pages/home_page.rb'
require_relative '../pages/login_usario_page.rb'
require_relative '../pages/cadastro_novo_page.rb'
require_relative '../pages/compras_produto_page.rb'

World(PageObjects)
World(Helper)
World(CadastroNovo)
World(LoginUsuario)
World(ComprasProduto)




Capybara.register_driver :chrome_no_password_popup do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  # Argumentos para desativar sugestões de senha, notificações e popups
  options.add_argument('--disable-save-password-bubble')
  options.add_argument('--disable-infobars')
  options.add_argument('--disable-notifications')
  options.add_argument('--no-default-browser-check')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--start-maximized')



  # Preferências para desativar gerenciador de senhas e notificações
  prefs = {
    'credentials_enable_service' => false,
    'profile.password_manager_enabled' => false,
    'profile.default_content_setting_values.notifications' => 2,
    'profile.default_content_setting_values.automatic_downloads' => 1
  }
  options.add_preference(:prefs, prefs)

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.configure do |config|
  config.default_driver = :chrome_no_password_popup
  config.app_host = 'http://www.automationpractice.pl'
  config.default_max_wait_time = 10
end

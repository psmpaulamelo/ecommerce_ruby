Before('@acessar_site') do
  home.load
end


After do |scenario|
  nome_arquivo = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  status = scenario.failed? ? 'falhou' : 'passou'
  tirar_foto(nome_arquivo, status)
end

AfterStep do
  fechar_popups_do_chrome
end
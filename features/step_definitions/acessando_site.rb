
Quando('acesso a URL') do
 visit('http://www.automationpractice.pl/')
 sleep(5)
end

Então('eu verifico se estou com a página correta') do
  find('.login').click
  sleep(10)
end

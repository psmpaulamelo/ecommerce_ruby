
Dado('que inicio novo cadastro colocando um email nunca usado') do
  criar_user
end

Então('acesso a página de usuário') do
  confirma_criacao_user
end

Quando('tento usar um email já cadastrado anteriormente') do
  usar_email_cadastrado
end

Então('deve aparecer uma mensagem de erro') do
  mensagem_erro_cadastro
end

Quando('preencho meus dados pessoais') do
  preencher_formulario
end

Então('crio uma nova conta com sucesso E sou direcionado para a página de usuário') do
 cadastro_realizado 
end


Dado('que estou na area de logada do usuarios') do
  preencher_endereco
end

Então('antes de fazer a minha compra incluo o meu endereço de entrega') do
  endereco_cadastrado
end

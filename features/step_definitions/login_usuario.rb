Quando('insiro o email e a senha correta') do
  login_usuario_com_sucesso
end

Então('acesso a área restrita do usuário') do
  area_logada
end


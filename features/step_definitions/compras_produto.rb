Dado('que eu adiciono produto no carrinho') do
 comprar_produto
end

Quando('vou efetuar o pagamento preciso logar antes na minha conta') do
  finalizar_compra
end

Então('meu pedido entra na pagina de historico de pedido como pedido efetuado') do
 historico_pedido
end

Dado('que eu estou logado na minha conta') do
  login_para_compra
end

Quando('realizo a minha compra') do
  comprar_produto_ja_logado
end
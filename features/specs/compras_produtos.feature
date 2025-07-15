# language: pt

# Cenários referente a fluxo de compra de produtos

Funcionalidade: Compra de produtos


@compra_sem_login
Cenário: Compra de um produto
  Dado que eu adiciono produto no carrinho
  Quando vou efetuar o pagamento preciso logar antes na minha conta
  Então meu pedido entra na pagina de historico de pedido como pedido efetuado



@compra_com_login
Cenário: Compra de um produto
  Dado que eu estou logado na minha conta
  Quando realizo a minha compra 
  Então meu pedido entra na pagina de historico de pedido como pedido efetuado
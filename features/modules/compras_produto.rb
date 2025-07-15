require 'faker'
require 'pry'

module ComprasProduto

  #compra de produto sem logar na conta 
  def comprar_produto
    home.load
    home.menu_women.click
    compras.produto_blusa.click
    compras.cor_blusa.click
    compras.add_carrinho.click
    compras.fechar_compra_tela_produto.click
    compras.fechar_compra_tela_resumo.click

  end


  def finalizar_compra
    cadastro.email_login.set('qatestando@teste.com.br')
    cadastro.senha_login.set('qatestando')
    cadastro.btn_login.click
    expect(page).to have_content('Addresses')
    compras.btn_endereco_entrega.click
    expect(page).to have_content('Shipping')
    expect(page).to have_selector('#cgv', visible: :all)
    find('#cgv', visible: :all).check
    compras.fechar_transportadora.click
    compras.pagamento_cartao.click    
    compras.confirma_pagamento.click
    compras.ver_historico_pedido.click
  end

  
  #compra de produto ja logado na conta 

  def login_para_compra
    home.load
    home.btn_sign_in.click
    cadastro.load
    cadastro.email_login.set('qatestando@teste.com.br')
    cadastro.senha_login.set('qatestando')
    cadastro.btn_login.click
    home.load
    home.menu_women.click 
  end

  def comprar_produto_ja_logado
  compras.produto_vestido.click
  within_frame(find('iframe.fancybox-iframe')) do
    expect(page).to have_css('a#color_8', wait: 10)
    find('a#color_8').click
    compras.add_carrinho.click 
  end
  compras.fechar_compra_tela_modal.click
  expect(page).to have_content('SHOPPING-CART SUMMARY')
  compras.resumo_pedido.click
  expect(page).to have_content('ADDRESSES')
  compras.btn_endereco_entrega.click
  expect(page).to have_selector('#cgv', visible: :all)
  find('#cgv', visible: :all).check
  compras.fechar_transportadora.click
  compras.pagamento_check.click
  compras.confirma_pagamento.click
  expect(page).to have_content('ORDER CONFIRMATION')
  expect(page).to have_content('Your order on My Shop is complete.')
  compras.ver_historico_pedido.click
end



  def historico_pedido
    expect(page).to have_content('ORDER HISTORY')
  end



  
end  
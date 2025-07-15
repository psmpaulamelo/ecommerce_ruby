#mapeamento dos elementos de produto no fluxo de compra 


class ComprasProdutoPage < SitePrism::Page


  #produtos 
  
  element :produto_blusa,                  'a.product_img_link > img[title="Blouse"]'
  element :cor_blusa ,                     '#color_8'
  element :add_carrinho,                   'button[name="Submit"]'
  element :cont_comprando,                 'span[title="Continue shopping"]'
  element :fechar_compra_tela_produto,     'a[title="Proceed to checkout"]'
  element :fechar_compra_tela_resumo,      'a[title="Proceed to checkout"]'
  element :produto_vestido,                'a[href*="id_product=6"] img[alt="Printed Summer Dress"]'
  element :cor_vestido,                    'a#color_8'
  element :add_carrinho,                   'button[name="Submit"]'
  element :resumo_pedido,                  'a.standard-checkout[title="Proceed to checkout"]'
  element :fechar_compra_tela_modal,        'a.btn.btn-default.button.button-medium[title="Proceed to checkout"]' 

  

  #escolha do endereço de entrega 
  element :btn_endereco_entrega,            'button[name="processAddress"]'
  element :aceitar_termo_transporte,       '#cgv'
  element :fechar_transportadora,          'button[name="processCarrier"]'

  #pagamento
  element :pagamento_cartao,               'a[title="Pay by bank wire"]'
  element :pagamento_check ,               'a[title="Pay by check."]'
  element :confirma_pagamento,   :xpath,    "//span[contains(text(), 'I confirm my order')]"
  element :ver_historico_pedido,         :xpath, "//a[contains(text(), 'View your order history')]"                   
end  
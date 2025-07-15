class HomePage < SitePrism::Page
  set_url '/'  # Página inicial

  element :btn_sign_in, '.login'  # Botão "Sign in"
  element :menu_women, :xpath,       "//ul[contains(@class, 'sf-menu')]//a[normalize-space(text())='Women']"
end

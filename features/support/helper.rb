module Helper
  def tirar_foto(nome_arquivo, resultado)
    nome_arquivo = nome_arquivo.gsub(/\s+/, '_').downcase
    caminho_arquivo = "report/screenshots/test_#{resultado}"
    FileUtils.mkdir_p(caminho_arquivo) unless Dir.exist?(caminho_arquivo)

    foto = "#{caminho_arquivo}/#{nome_arquivo}_#{Time.now.strftime('%Y%m%d%H%M%S')}.png"
    page.save_screenshot(foto)

    # Substitui embed por attach (compatível com Cucumber atual)
    attach(File.open(foto), 'image/png')
  end

  def fechar_popups_do_chrome
    page.execute_script <<-JS
      // Fecha popups de senha do Google Chrome (como 'Change your password')
      const popup = document.querySelector('div[role="dialog"]');
      if (popup) {
        const okButton = popup.querySelector('button, input[type="submit"]');
        if (okButton) {
          okButton.click();
        }
      }

      // Fecha o alerta "Restore pages?"
      const restorePopup = document.querySelector('div[role="dialog"]');
      if (restorePopup && restorePopup.innerText.includes('Restore pages')) {
        const buttons = restorePopup.querySelectorAll('button');
        buttons.forEach(b => {
          if (b.innerText.toLowerCase().includes('restore')) {
            b.click();
          }
        });
      }
    JS
  end
end

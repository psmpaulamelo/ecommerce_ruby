Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects

  
  def home 
    @home ||= HomePage.new
  end
  
 def cadastro 
  @cadastro ||= CadastroNovoPage.new
 end

  def login 
    @login ||= LoginUsuarioPage.new
  end

  def compras
    @compras ||= ComprasProdutoPage.new
  end

end

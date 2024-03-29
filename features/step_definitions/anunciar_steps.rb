Dado("que acessei o formulário e anúncio de veículos") do
  @nav.vai_para_anuncio 
end

E("que possuo o seguinte veículo") do |table|             
  @anuncios = table.hashes
  DAO.new.remover_anuncio(@anuncios.first)
end                                                          
  
Dado("eu já cadastrei este anuncio anteriormente") do        
  @veiculo = @anuncios.first      
  @anuncio_page.novo(@veiculo, @blindado)
  @swal.ok 
  @nav.vai_para_anuncio
end   
  
Dado("este veículo é blindado") do  
  @blindado = true
end

Quando("faço o anúncio deste veículo") do  
  @veiculo = @anuncios.first      
  @anuncio_page.novo(@veiculo, @blindado) 
end                                                          
                                                               
Então("devo ver a seguinte mensagem:") do |msg_sucesso|         
  expect(@swal.mensagem.text).to eql msg_sucesso
  @swal.ok
end                                                
                         
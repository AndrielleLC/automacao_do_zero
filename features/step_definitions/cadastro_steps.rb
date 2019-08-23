#require 'faker'

Dado('que estou na página de cadastro') do
  #visit '/api/reset'
  @cadastro_page.visita
end

Quando('faço o meu cadastro com') do |table|
  @usuario = table.rows_hash

  #Data Access Object
  DAO.new.remover_usuario(@usuario[:email])

  @cadastro_page.novo(@usuario)
end

Então("devo ver a mensagem {string}") do |mensagem_alerta|
  expect(@cadastro_page.alerta).to have_content mensagem_alerta
end



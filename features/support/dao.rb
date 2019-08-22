require 'mongo'

class DAO
    Mongo::Logger.logger = Logger.new('log/mongo.log')
    
    def remover_usuario(email)
        #str_conn = 'mongodb://usuario:senha@servidor:porta/banco_de_dados'
        #client = Mongo::Client.new(str_conn)
        usuarios = client[:users]
        usuarios.delete_one('profile.email' => email)
    end

    def remover_anuncio(veiculo)
        anuncios = client[:sells]
        anuncios.delete_many(
            'brand' => veiculo[:marca], 
            'model' => veiculo[:modelo],
            'desc' => veiculo[:versao]
        )
    end

    private
    def client
        cliente = Mongo::Client.new([ 'ds117719.mlab.com:17719' ], :database => 'ninjamotors', :password => 'qaninja', :user => 'aluno', :retry_writes => false)
    end
end
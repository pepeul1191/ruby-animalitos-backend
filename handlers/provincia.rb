# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
    get '/provincia/listar/:departamento_id' do
        DB[:provincias].select(:id, :nombre).where(departamento_id: params['departamento_id']).all.to_a.to_json
    end
end
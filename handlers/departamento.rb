# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
    get '/departamento/listar' do
        DB[:departamentos].all.to_a.to_json
    end
end
# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
    get '/distrito/listar/:provincia_id' do
        DB[:distritos].select(:id, :nombre).where(provincia_id: params['provincia_id']).all.to_a.to_json
    end

    get '/distrito/buscar' do
        DB[:vw_distrito_provincia_departamento].where(Sequel.like(:nombre, params[:nombre] + '%')).limit(10).to_a.to_json
    end
end
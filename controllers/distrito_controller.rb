# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
  get '/distrito/listar/:provincia_id' do
    rpta = Array.new
    Distrito.select(:id, :nombre).where(:provincia_id => params['provincia_id']).each { |r| rpta.push(r.values) }
    rpta.to_json
  end

  get '/distrito/buscar' do
    rpta = Array.new
    VWDistritoProvinciaDepartamento.where(Sequel.like(:nombre, params[:nombre] + '%')).limit(10).each { |r| rpta.push(r.values) }
    rpta.to_json
  end
end
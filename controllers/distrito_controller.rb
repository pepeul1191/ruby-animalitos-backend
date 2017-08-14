# -*- encoding : utf-8 -*-
class MyApp < Sinatra::Base
  get '/distrito/listar/:provincia_id' do
    rpta = Array.new
    Distrito.select(:id, :nombre).where(:provincia_id => params['provincia_id']).each { |r| rpta.push(r.values) }
    rpta.to_json
  end

  get '/distrito/buscar' do
    rpta = Array.new
    #@db[:vw_distrito_provincia_departamento].where(Sequel.like(:nombre, nombre + '%')).limit(10).to_a
    VWDistritoProvinciaDepartamento.where(Sequel.like(:nombre, params[:nombre] + '%')).limit(10).each { |r| rpta.push(r.values) }
    rpta.to_json
  end
end
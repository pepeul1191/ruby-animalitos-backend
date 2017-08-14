# -*- encoding : utf-8 -*-
class MyApp < Sinatra::Base
  get '/provincia/listar/:departamento_id' do
    rpta = Array.new
    Provincia.select(:id, :nombre).where(:departamento_id => params['departamento_id']).each { |r| rpta.push(r.values) }
    rpta.to_json
  end
end
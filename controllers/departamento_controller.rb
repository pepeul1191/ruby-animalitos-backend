# -*- encoding : utf-8 -*-
class MyApp < Sinatra::Base
  get '/departamento/listar' do
    rpta = Array.new
    Departamento.all.each { |r| rpta.push(r.values) }
    rpta.to_json
  end
end
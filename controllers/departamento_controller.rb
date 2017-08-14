class MyApp < Sinatra::Base
  get '/departamento/listar' do
    rpta = Array.new
    Departamento.all.each { |x| rpta.push(x.values) }
    rpta.to_json
  end
end
# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
	post '/criador/correo_repetido' do
		Criador.where(:correo => params['correo']).count.to_s
  	end
end
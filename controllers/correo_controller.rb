# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
	post '/correo/mandar' do
		 correo = JSON.parse(params['correo'])
	     begin  
				Correo.insert(:nombres => correo['nombres'], :apellidos => correo['apellidos'], :correo => correo['correo'], :telefono => correo['telefono'], :mensaje => correo['mensaje'], :momento => Time.now)
			rpta = { :tipo_mensaje => 'success',  :mensaje => 'Correo OK'}.to_json
	    	rescue StandardError => e 
	    		status 500
	    		rpta = { :tipo_mensaje => 'error', :mensaje => ['Se ha producido un error al registrar su correo', e] }.to_json
	    end
		 rpta
	end
end
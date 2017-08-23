# -*- encoding : utf-8 -*-
class AppAnimalitos < Sinatra::Base
	post '/usuario/validar' do
		existe = Usuario.where(:usuario => params['usuario'], :contrasenia=> params['contrasenia']).count
		rpta = ''
		if existe == 1
			rs = Usuario.where(:usuario => params['usuario'], :contrasenia=> params['contrasenia']).join_table(:inner, EstadoUsuario, id: :estado_usuario_id)
			estado = ''
			rs.each do |r|
				estado = r[:nombre]
			end
			rpta = {:existe => 'si', :estado => estado}
		else
			rpta = {:existe => 'no'}
		end
		rpta.to_json
  end
end
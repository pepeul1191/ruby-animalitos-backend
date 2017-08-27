## Animalitos BanckEnd Ruby - MySQL

Requisitos de software previamente instalado:

+ Ruby 2.3.1
+ MySQL

Instalación de dependencias:

	$  bundler install

Correr el servicio:

	$ rerun "puma -p 4000"
  
### Rutas

+ POST /correo/mandar -> CorreoController#mandar
+ GET /distrito/buscar ->DistritoController#buscar
+ POST /usuario/crear->UsuarioController#crear
+ POST /usuario/correo_repetido -> CriadorController#correo_repetido
+ POST /usuario/validar->UsuarioController#validar

### Fuentes externas:

+ Oren Sinatra -> https://github.com/oren/sinatra-template

### TODO

+ En 

---

 Thanks/Credits

    Pepe Valdivia: developer Software Web Perú [http://softweb.pe]
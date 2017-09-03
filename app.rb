require 'sinatra/base'
require_relative 'config/database'

class AppAnimalitos < Sinatra::Base
  enable :method_override
  enable :sessions
  set :session_secret, 'super secret'

  before do
    headers['server'] = 'Ruby, Ubuntu'
  end

  get '/test/conexion' do
    'hola mundo'
  end

  configure do
    set :app_file, __FILE__
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :qa do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :production do
    set :raise_errors, false #false will show nicer error page
    set :show_exceptions, false #true will ignore raise_errors and display backtrace in browser
  end
end

# Load up all helpers first (NB)
Dir[File.dirname(__FILE__) + "/helpers/*.rb"].each do |file| 
  require file
end

# Load up all controllers last
Dir[File.dirname(__FILE__) + "/handlers/*.rb"].each do |file| 
  require file
end
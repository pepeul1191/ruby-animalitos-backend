# config/database.rb
require 'mysql2'
require 'sequel'

DB= Sequel.connect(
	:adapter => 'mysql2',
   :host => '127.0.0.1',
   :username => 'root',
   :password => '123',
   :dbname => 'db_animalitos',
   :max_connections => 30
)
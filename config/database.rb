# config/database.rb
require 'mysql2'
require 'sequel'

DB= Sequel.connect(
	:adapter => 'mysql2',
   :host => '192.168.1.9',
   :username => 'remote',
   :password => '123',
   :dbname => 'db_animalitos',
   :max_connections => 30
)
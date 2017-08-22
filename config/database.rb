# config/database.rb
require 'mysql2'
require 'sequel'

Sequel::Model.db= Sequel.connect(
	:adapter => 'mysql2',
   :host => '192.168.1.3',
   :username => 'root',
   :password => '123',
   :dbname => 'db_animalitos',
   :max_connections => 30
)
# config/database.rb
require 'sqlite3'
require 'sequel'

Sequel::Model.db= Sequel.connect(:adapter=>'sqlite', :database=>File.expand_path('../../db/db_ubicaciones.db', __FILE__))
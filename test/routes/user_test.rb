require_relative '../../app'
require_relative '../test_helper'
require 'test/unit'
require 'rack/test'

class AppAnimalitosTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    AppAnimalitos.new
  end

  def test_root
    get '/'
    assert_equal true, last_response.body.include?('Sinatra template')
  end
end

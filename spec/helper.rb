ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'

require 'realtor_service'

include Rack::Test::Methods

def app
  RealtorService::App
end



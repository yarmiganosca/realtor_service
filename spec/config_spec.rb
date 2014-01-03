require_relative './helper'
require 'json'

app.set :config_folder, File.join(File.dirname(__FILE__), "config")

describe "retrieving configuration data" do
  it "should return a json file" do
    get "/config/hello"

    JSON.parse(last_response.body).must_equal({"name" => "World"})
  end
end

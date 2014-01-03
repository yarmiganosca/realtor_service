require_relative './helper'

app.set :config_folder, File.join(File.dirname(__FILE__), "config")

describe "retrieving configuration data" do
  it "should return a json file" do
    get "/hello/config.js"

    last_response.body.include?("window.AppConfig").must_equal true
  end
end

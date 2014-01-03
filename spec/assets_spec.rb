require_relative "./helper"

app.set :public_folder, File.join(File.dirname(__FILE__), "assets")

describe "retrieving a static asset" do
  it "should return the asset" do
    get "/hello/assets/index.js"

    last_response.body.include?('use strict').must_equal true
  end
end

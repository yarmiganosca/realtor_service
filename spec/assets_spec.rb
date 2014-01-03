require_relative "./helper"

app.set :public_folder, File.join(File.dirname(__FILE__), "assets")

describe "retrieving a static asset" do
  it "should return the asset" do
    get "/assets/hello/index.js"

    last_response.body.empty?.must_equal false
  end
end

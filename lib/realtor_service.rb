require 'sinatra'
require 'sinatra/json'

get "/data/:app" do |app|
  json app_data app
end

get "/assets/:app/*" do |app, path|
  send_file app_asset app, path
end

def app_data app
  {:path => "/path/to/asset.js"}
end

def app_asset app, path
  File.join settings.public_folder, app, path
end

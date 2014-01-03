require 'sinatra/base'

module RealtorService
  class App < Sinatra::Base
    get "/config/:app" do |app|
      send_file app_config app
    end

    get "/assets/:app/*" do |app, path|
      send_file app_asset app, path
    end

    set :public_folder, File.join(File.dirname(__FILE__), "..", "assets")
    set :config_folder, File.join(File.dirname(__FILE__), "..", "config")

    def app_config app
      File.join settings.config_folder, "#{app}.json"
    end

    def app_asset app, path
      File.join app_assets_folder(app), path
    end

    def app_assets_folder app
      File.join settings.public_folder, app
    end
  end
end

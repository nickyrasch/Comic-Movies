require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ComicMovies
  class Application < Rails::Application
    config.action_controller.asset_host = 
      "http://d2egfeka7tguqq.cloudfront.net" 
    config.assets.digest = true  #use MD5 digest for asset names
    config.assets.enabled = true  #enable the asset pipeline
    config.assets.initialize_on_precompile = true
    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Origin' => '*',
      'Access-Control-Request-Method' => '*'
    }    
    config.paperclip_defaults = {
      storage: :s3,
      :s3_credentials => {
        :bucket => ENV['FOG_DIRECTORY'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      },
      s3_host_name: 's3-us-west-1.amazonaws.com',
      # path: "assets/characters/:id/:style.:extension"
      path: "assets/characters/:id/:filename"
    }
  end
end

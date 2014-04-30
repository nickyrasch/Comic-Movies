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
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end

    config.action_controller.asset_host = 
      "http://d1m6yt1zqrbl4q.cloudfront.net"
    config.assets.digest = true  #use MD5 digest for asset names
    config.assets.enabled = true  #enable the asset pipeline
    config.assets.initialize_on_precompile = true
    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Origin' => '*',
      'Access-Control-Request-Method' => '*'
    }    
    # config.paperclip_defaults = {
    #   storage: :s3,
    #   s3_credentials: 'config/initializers/s3.yml'
    # }
  end
end

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Getapet
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    Petfinder.configure do |config|
      config.api_key = '9bfe192afe71cc77e1a529703540ba73'
      config.api_secret = '25f3b4e40efba6ea2106ee643241b700'
    end

    
  end
end

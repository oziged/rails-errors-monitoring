require_relative 'boot'
require 'rails/all'
require 'raygun4ruby'
require 'sentry-raven'
require 'bugsnag'

Raygun.setup do |config|
  config.api_key = "SxnpCNVhk1BoNn9csQ3ZA"
end

Raven.configure do |config|
  config.dsn = 'https://e94e78e1bb3749ca93197088ceec9fd0:56190e3b7cc447cbaccc616dc72f150e@sentry.io/2208192'
end

Bugsnag.configure do |config|
  config.app_version = '1.3.0'
end



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsErrorTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Starterapp
  class Application < Rails::Application

    config.middleware.insert_before 0, 'Rack::Cors' do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end

      config.assets.paths << Rails.root.join('node_modules')
    config.assets.enabled = true

    config.active_record.raise_in_transactional_callbacks = true


  end
end

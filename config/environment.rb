ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])

require "rails"

# comment out this module and class declaration to see tests pass.
module ActiveRecord
  class Base
  end
end
require "action_controller/railtie"

Bundler.require(*Rails.groups)

module CucumberPoltergeistRubyTwoDotOneExitCode
  class Application < Rails::Application
    config.cache_classes = true
    config.eager_load = false
  end
end

# Initialize the Rails application.
Rails.application.initialize!


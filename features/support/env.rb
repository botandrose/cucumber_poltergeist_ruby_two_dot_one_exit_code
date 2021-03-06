require 'capybara/cucumber'
require 'capybara/poltergeist'

require 'active_support/testing/autorun'
Capybara.default_driver = :poltergeist

Capybara.app = lambda { |env| [200, {}, [""]] }

Given "I fail" do
  visit "/"
  fail
end

Given "I succeed" do
  visit "/"
end


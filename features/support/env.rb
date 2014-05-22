require 'cucumber/rails'
require 'capybara'
require 'capybara/poltergeist'
Capybara.default_driver = :poltergeist

Given "I fail" do
  visit "/"
end


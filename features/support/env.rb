require 'cucumber/rails'
require 'capybara'
require 'capybara/poltergeist'

# comment out this line to see test pass
Capybara.default_driver = :poltergeist

Given "I fail" do
  visit "/"
end


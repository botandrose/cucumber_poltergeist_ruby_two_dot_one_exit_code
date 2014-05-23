require 'capybara/rspec'
require 'capybara/poltergeist'

require 'active_support/testing/autorun'
Capybara.default_driver = :poltergeist

Capybara.app = lambda { |env| [200, {}, [""]] }

describe "fail", type: :feature do
  it "fails" do
    visit "/"
    fail
  end
end


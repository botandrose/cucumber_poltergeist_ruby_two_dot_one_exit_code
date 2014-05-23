require "spec_helper"

describe "fail", type: :feature do
  it "fails" do
    visit "/"
    fail
  end
end


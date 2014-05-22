require "spec_helper"

describe "fail" do
  it "fails" do
    visit "/"
    page.status_code.should == 200
  end
end

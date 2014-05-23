require "minitest"

class TestExitCodes < Minitest::Test
  def test_rspec_failure
    output = `rspec spec/fail_spec.rb 2>&1`
    refute $?.success?, "rspec should have exited with non-zero status, but did not"
  end

  def test_rspec_success
    output = `rspec spec/succeed_spec.rb 2>&1`
    assert $?.success?, "rspec should have exited with zero status, but did not"
  end

  def test_cucumber_failure
    output = `cucumber features/fail.feature 2>&1`
    refute $?.success?, "cucumber should have exited with non-zero status, but did not"
  end

  def test_cucumber_success
    output = `cucumber features/succeed.feature 2>&1`
    assert $?.success?, "cucumber should have exited with zero status, but did not"
  end
end

task :default do
  Minitest.run
end


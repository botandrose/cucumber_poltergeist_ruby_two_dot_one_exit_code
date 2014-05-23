require "minitest"

class TestExitCodes < Minitest::Test
  def test_rspec
    output = `rspec 2>&1`
    refute $?.success?, "rspec should have exited with non-zero status, but did not"
  end

  def test_cucumber
    output = `cucumber 2>&1`
    refute $?.success?, "cucumber should have exited with non-zero status, but did not"
  end
end

task :default do
  Minitest.run
end


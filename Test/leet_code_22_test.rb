require 'test/unit'
require '../Code/leet_code_22'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_22.new
  end

  def test_1
    assert_equal(['()'], @obj.generate_parenthesis(1))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
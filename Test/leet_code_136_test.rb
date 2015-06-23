require 'test/unit'
require '../Code/leet_code_136'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_136.new
  end

  def test_121
    assert_equal(2, @obj.single_number([1, 2, 1]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
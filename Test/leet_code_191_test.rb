require 'test/unit'
require '../Code/leet_code_191'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_191.new
  end

  def test_1
    assert_equal(1, @obj.hamming_weight(1))
  end

  def test_11
    assert_equal(3, @obj.hamming_weight(11))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
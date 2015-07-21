require 'test/unit'
require '../Code/leet_code_165'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_165.new
  end

  def test_1
    assert_equal(-1, @obj.compare_version('0.1', '1.1'))
  end

  def test_2
    assert_equal(-1, @obj.compare_version('1', '1.1'))
  end

  def test_3
    assert_equal(0, @obj.compare_version('1.0', '1'))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
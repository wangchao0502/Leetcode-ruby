require 'test/unit'
require '../Code/leet_code_62'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_62.new
  end

  def test_1
    assert_equal(2, @obj.unique_paths(2, 2))
  end

  def test_2
    assert_equal(1, @obj.unique_paths(1, 2))
  end

  def test_3
    assert_equal(1, @obj.unique_paths(1, 3))
  end

  def test_4
    assert_equal(6, @obj.unique_paths(3, 3))
  end

  def test_5
    puts @obj.unique_paths(23, 12)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
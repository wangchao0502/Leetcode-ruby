require 'test/unit'
require '../Code/leet_code_35'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_35.new
  end

  def test_1356_5
    assert_equal(2, @obj.search_insert([1, 3, 5, 6], 5))
  end

  def test_1356_2
    assert_equal(1, @obj.search_insert([1, 3, 5, 6], 2))
  end

  def test_1356_7
    assert_equal(4, @obj.search_insert([1, 3, 5, 6], 7))
  end

  def test_1356_0
    assert_equal(0, @obj.search_insert([1, 3, 5, 6], 0))
  end

  def test_1_1
    assert_equal(0, @obj.search_insert([1], 1))
  end


  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
require 'test/unit'
require '../Code/leet_code_28'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_28.new
  end

  def test_1
    assert_equal(1, @obj.str_str('wangchao', 'ang'))
  end

  def test_2
    assert_equal(0, @obj.str_str('', ''))
  end

  def test_3
    assert_equal(0, @obj.str_str('a', 'a'))
  end

  def test_4
    assert_equal(4, @obj.str_str('mississippi', 'issip'))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
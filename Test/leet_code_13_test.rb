require 'test/unit'
require '../Code/leet_code_13'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_13.new
  end

  def test_xi
    assert_equal(11, @obj.roman_to_int('XI'))
  end

  def test_lxxx
    assert_equal(80, @obj.roman_to_int('LXXX'))
  end

  def test_mdccclxxxviii
    assert_equal(1888, @obj.roman_to_int('mdccclxxxviii'))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
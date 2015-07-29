require 'test/unit'
require '../Code/leet_code_125'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_125.new
  end

  def test_1
    assert_equal(true, @obj.is_palindrome('[asd f==d s ;a'))
  end

  def test_2
    assert_equal(false, @obj.is_palindrome('ab'))
  end

  def test_3
    assert_equal(false, @obj.is_palindrome('1a2'))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
require 'test/unit'
require '../Code/leet_code_9'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_9.new
  end

  def test_1
    assert_equal(true, @obj.is_palindrome(212))
  end

  def test_2
    assert_equal(false, @obj.is_palindrome(123))
  end


  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
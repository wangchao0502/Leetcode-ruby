require 'test/unit'
require '../Code/leet_code_58'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_58.new
  end

  def test_1
    assert_equal(5, @obj.length_of_last_word('Hello World'))
  end

  def test_2
    assert_equal(5, @obj.length_of_last_word('Hello World  '))
  end

  def test_3
    assert_equal(0, @obj.length_of_last_word('  '))
  end

  def test_4
    assert_equal(0, @obj.length_of_last_word(''))
  end


  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
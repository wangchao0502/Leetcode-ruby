require 'test/unit'
require '../Code/leet_code_38'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_38.new
  end

  def test_1
    assert_equal('1', @obj.count_and_say(1))
  end

  def test_2
    assert_equal('11', @obj.count_and_say(2))
  end

  def test_3
    assert_equal('21', @obj.count_and_say(3))
  end

  def test_4
    assert_equal('1211', @obj.count_and_say(4))
  end

  def test_5
    assert_equal('111221', @obj.count_and_say(5))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
  
end
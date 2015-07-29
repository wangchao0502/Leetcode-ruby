require 'test/unit'
require '../Code/leet_code_67'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_67.new
  end

  def test_1
    a = '11'
    b = '1'
    assert_equal('100', @obj.add_binary(a, b))
  end

  def test_2
    a = '0'
    b = '0'
    assert_equal('0', @obj.add_binary(a, b))
  end

  def test_3
    a = '1111111111111111111111111111111111111'
    b = '0'
    assert_equal(a, @obj.add_binary(a, b))
  end

  def test_4
    a = '101111'
    b = '10'
    assert_equal('110001', @obj.add_binary(a, b))
  end

  def test_5
    a = '0'
    b = '1'
    assert_equal('1', @obj.add_binary(a, b))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
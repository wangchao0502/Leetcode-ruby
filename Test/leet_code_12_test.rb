require 'test/unit'
require '../Code/leet_code_12'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_12.new
  end

  def test_1
    assert_equal('I', @obj.int_to_roman(1))
    assert_equal('II', @obj.int_to_roman(2))
    assert_equal('IV', @obj.int_to_roman(4))
    assert_equal('VIII', @obj.int_to_roman(8))
    assert_equal('IX', @obj.int_to_roman(9))
    assert_equal('LXXX', @obj.int_to_roman(80))
    assert_equal('XCIX', @obj.int_to_roman(99))
    assert_equal('MMMCMXCIX', @obj.int_to_roman(3999))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
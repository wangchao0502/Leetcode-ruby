require 'test/unit'
require '../Code/leet_code_190'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_190.new
  end

  def test_1
    assert_equal(
        0b00111001011110000010100101000000,
        @obj.reverse_bits(0b00000010100101000001111010011100))
  end

  def test_2
    assert_equal(
        0b10000000000000000000000000000000,
        @obj.reverse_bits(1))
  end

  def test_3
    assert_equal(
        0b01000000000000000000000000000000,
        @obj.reverse_bits(2))
  end

  def test_4
    assert_equal(
        1,
        @obj.reverse_bits(0b10000000000000000000000000000000))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
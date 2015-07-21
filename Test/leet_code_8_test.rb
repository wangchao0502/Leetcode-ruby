require 'test/unit'
require '../Code/leet_code_8'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_8.new
  end

  def test_empty
    str = ''
    assert_equal(0, @obj.my_atoi(str))
  end

  def test_spaces
    str = '    '
    assert_equal(0, @obj.my_atoi(str))
  end

  def test_0
    str = '0'
    assert_equal(0, @obj.my_atoi(str))
  end

  def test_1
    str = '   1'
    assert_equal(1, @obj.my_atoi(str))
  end

  def test_plus1
    str = '   +1'
    assert_equal(1, @obj.my_atoi(str))
  end

  def test_negative
    str = '-1'
    assert_equal(-1, @obj.my_atoi(str))
  end

  def test_space_1_space
    str = '   1   '
    assert_equal(1, @obj.my_atoi(str))
  end

  def test_space_1_space_2
    str = '   1 2  '
    assert_equal(1, @obj.my_atoi(str))
  end

  def test_negative2
    str = ' -123123   '
    assert_equal(-123123, @obj.my_atoi(str))
  end

  def test_max
    str = '   2147483648  '
    assert_equal(2147483647, @obj.my_atoi(str))
  end

  def test_min
    str = '   -2147483649  '
    assert_equal(-2147483648, @obj.my_atoi(str))
  end

  def test_wrong
    str = ' as1f13dsf '
    assert_equal(0, @obj.my_atoi(str))
  end

  def test_wrong_mix
    str = ' -12as1f13dsf '
    assert_equal(-12, @obj.my_atoi(str))
  end

  def test_0001
    str = '0001'
    assert_equal(1, @obj.my_atoi(str))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
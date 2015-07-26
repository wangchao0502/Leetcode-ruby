require 'test/unit'
require '../Code/leet_code_6'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_6.new
  end

  def test_1
    assert_equal('PAHNAPLSIIGYIR', @obj.convert('PAYPALISHIRING', 3))
  end

  def test_2
    assert_equal('AB', @obj.convert('AB', 1))
  end

  def test_3
    assert_equal('AEBDC', @obj.convert('ABCDE', 3))
  end

  def test_4
    assert_equal('ABCED', @obj.convert('ABCDE', 4))
  end

  def test_5
    assert_equal('ABFCED', @obj.convert('ABCDEF', 4))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
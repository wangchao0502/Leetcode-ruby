require 'test/unit'
require '../Code/leet_code_168'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_168.new
  end

  def test_1
    assert_equal('A', @obj.convert_to_title(1))
  end

  def test_26
    assert_equal('Z', @obj.convert_to_title(26))
  end

  def test_28
    assert_equal('AB', @obj.convert_to_title(28))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
require 'test/unit'
require '../Code/leet_code_171'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_171.new
  end

  def test_a
    assert_equal(1, @obj.title_to_number("A"))
  end

  def test_aa
    assert_equal(27, @obj.title_to_number("AA"))
  end

  def test_ab
    assert_equal(28, @obj.title_to_number("AB"))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
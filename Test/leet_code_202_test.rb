require 'test/unit'
require '../Code/leet_code_202'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_202.new
  end

  def test_19
    assert_equal(true, @obj.is_happy(19))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
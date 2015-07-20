require 'test/unit'
require '../Code/leet_code_20'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_20.new
  end

  def test_1
    str = '[ ]{12}(333)()()()'
    assert_equal(true, @obj.is_valid(str))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
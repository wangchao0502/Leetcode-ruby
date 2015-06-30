require 'test/unit'
require '../Code/permutation'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Permutation.new
  end

  def test_123
    assert_equal(6, @obj.perm(3))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
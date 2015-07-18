require 'test/unit'
require '../Code/leet_code_88'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_88.new
  end

  def test_1
    nums1 = [1, 3, 5, 7]
    nums2 = [2, 4, 6, 8]
    @obj.merge(nums1, 4, nums2, 4)
    assert_equal([1, 2, 3, 4, 5, 6, 7, 8], nums1)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
require 'test/unit'
require '../Code/leet_code_14'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_14.new
  end

  def test_1
    strs = ['impossible', 'important', 'image']
    assert_equal('im', @obj.longest_common_prefix(strs))
  end

  def test_2
    strs = []
    assert_equal('', @obj.longest_common_prefix(strs))
  end

  def test_3
    strs = ['impossible', 'important', 'image', 'insert']
    assert_equal('i', @obj.longest_common_prefix(strs))
  end

  def test_4
    strs = ['ha']
    assert_equal('ha', @obj.longest_common_prefix(strs))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
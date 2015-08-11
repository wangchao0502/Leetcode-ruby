require 'test/unit'
require '../Code/leet_code_89'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_89.new
  end

  def test_block(n)
    result = @obj.gray_code(n)
    assert_block 'Error!' do
      return false unless result.size == 2**n
      (1...result.size).each do |i|
        x = result[i] ^ result[i - 1]
        return false unless x > 0 && x / 2 == 0
      end
      true
    end
  end

  def test_1
    assert_equal([0], @obj.gray_code(0))
    test_block(1)
    test_block(2)
    test_block(3)
    test_block(4)
    test_block(5)
    test_block(6)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
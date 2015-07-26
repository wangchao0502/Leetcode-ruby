require 'test/unit'
require '../Code/leet_code_204'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_204.new
  end

  def test_1
    assert_equal(4, @obj.count_primes(10))
  end

  def test_2
    assert_equal(0, @obj.count_primes(0))
    assert_equal(0, @obj.count_primes(1))
    assert_equal(0, @obj.count_primes(2))
    assert(@obj.count_primes(10000000))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end
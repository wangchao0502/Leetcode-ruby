require 'test/unit'
require '../Code/leet_code_232'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

  end

  def test_initialize11
    queue = Leet_Code_232::Queue.new()
    assert_equal(0, queue.size)
  end

  def test_push
    queue = Leet_Code_232::Queue.new()
    assert_equal(queue.queue[0], queue.push(1))
  end

  def test_peek
    queue = Leet_Code_232::Queue.new()
    queue.push(1)
    assert_equal(1, queue.peek)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end
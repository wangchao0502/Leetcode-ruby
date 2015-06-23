require 'test/unit'
require '../Code/foo'

class Foo_Test < Test::Unit::TestCase
  def setup
    @obj = Foo.new
  end

  def test_foo
    assert_equal("foo", @obj.foo, "Test foo function error!")
  end

  def test_bar
    assert_equal("bar", @obj.bar, "Test bar function error!")
  end
end
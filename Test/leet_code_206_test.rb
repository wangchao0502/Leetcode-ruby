require 'test/unit'
require '../Code/leet_code_206'

class Leet_Code_206_Test < Test::Unit::TestCase
  def setup
    @obj = Leet_Code_206.new
  end
  def test_list_with_many_nodes
    ln = Leet_Lib::ListNode.new(1, 2, 3, 4)
    assert_equal("[1 2 3 4]", ln.to_s)
  end
  def test_list_node_equal
    ln_1 = Leet_Lib::ListNode.new(1)
    ln_2 = Leet_Lib::ListNode.new(1)
    assert_equal(true, ln_1 == ln_2)
  end
  def test_nil
    assert_equal(nil, @obj.reverse_list(nil))
  end
  def test_one_element_list
    head = Leet_Lib::ListNode.new(1)
    assert_equal(head, @obj.reverse_list(head))
  end
  def test_many_elements_list
    ln_1 = Leet_Lib::ListNode.new(1, 2, 3, 4, 5)
    ln_2 = Leet_Lib::ListNode.new(5, 4, 3, 2, 1)
    assert_equal(ln_2, @obj.reverse_list(ln_1))
  end
end
require '../Code/leet_lib'

class Leet_Code_206
  def reverse_list(head, _rev = nil)
    if head
      _new = Leet_Lib::ListNode.new(head.val)
      _new.next = _rev
    end
    head ? reverse_list(head.next, _new) : _rev
  end
end
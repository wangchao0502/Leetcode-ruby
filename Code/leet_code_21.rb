class Leet_Code_21
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} l1
  # @param {ListNode} l2
  # @return {ListNode}
  def merge_two_lists(l1, l2)
    return l2 if l1.nil?
    return l1 if l2.nil?
    head = l1.clone
    result = head
    while l1 && l2
      if l1.val < l2.val
        result.next = l1
        l1 = l1.next
      else
        result.next = l2
        l2 = l2.next
      end
      result = result.next
    end
    result.next = l1 ? l1 : l2
    head.next
  end

end
class Leet_Code_234
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} head
  # @return {Boolean}
  def is_palindrome(head)
    # find middle node
    return true if head.nil? || head.next.nil?
    slow, fast = head, head
    while !fast.next.nil? && !fast.next.next.nil?
      slow = slow.next
      fast = fast.next.next
    end
    # reverse rest node
    slow.next = reverse(slow.next)
    slow = slow.next
    while !slow.nil?
      if slow.val != head.val
        return false
      end
      head = head.next
      slow = slow.next
    end
    true
  end

  def reverse(head)
    pre, tmp = nil, nil
    while !head.nil?
      tmp = head.next
      head.next = pre
      pre = head
      head = tmp
    end
    pre
  end

end
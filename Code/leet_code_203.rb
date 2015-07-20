class Leet_Code_203
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} head
  # @param {Integer} val
  # @return {ListNode}
  def remove_elements(head, val)
    return nil if head.nil?
    node = head
    while node.next != nil
      if node.next.val == val
        node.next = node.next.next
      else
        node = node.next
      end
    end
    if head.val == val
      head = head.next
    end
    head
  end
end
class Leet_Code_83
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} head
  # @return {ListNode}
  def delete_duplicates(head)
    return head if head.nil? || head.next.nil?
    node = head
    last = head
    while node.next
      node = node.next
      if node.val == last.val
        last.next = node.next
      else
        last = node
      end
    end
    head
  end
end
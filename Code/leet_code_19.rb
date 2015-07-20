class Leet_Code_19
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} head
  # @param {Integer} n
  # @return {ListNode}
  def remove_nth_from_end(head, n)
    faster, slower = head, head
    while n > 0 && !faster.nil?
      faster = faster.next
      n -= 1
    end

    if faster.nil?
      return head.next
    end

    while faster.next != nil
      faster = faster.next
      slower = slower.next
    end

    slower.next = slower.next.next
    head
  end

end
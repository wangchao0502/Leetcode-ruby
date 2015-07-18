class Leet_Code_160
  def get_intersection_node(head_a, head_b)
    pt_1, pt_2 = head_a, head_b
    is_jump = false
    while true
      return pt_1 if pt_1.val == pt_2.val
      pt_1, pt_2 = pt_1.next, pt_2.next
      if pt_1.nil?
        if !is_jump
          is_jump = true
          pt_1 = head_b
        else
          return nil
        end
      end
      pt_2 = head_a if pt_2.nil?
    end
  end
end
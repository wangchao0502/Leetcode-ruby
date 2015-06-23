module Leet_Lib
  class ListNode
    attr_accessor :val, :next

    def initialize(val, *args)
      @val = val
      @next = nil
      if args.length > 0
        node = self
        args.each do |v|
          _new = ListNode.new(v)
          node.next = _new
          node = _new
        end
      end
    end

    def to_s
      arr = []
      head = self
      while head
        arr.push(head.val)
        head = head.next
      end
      print("[#{arr.join(' ')}]")
      '[' + arr.join(' ') + ']'
    end

    def ==(object)
      if !object.instance_of?(self.class)
        false
      elsif self.equal?(object)
        true
      else
        this = self
        while this && object
          if this.val != object.val
            false
          end
          this = this.next
          object = object.next
        end
        true
      end
    end
  end

  class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val)
          @val = val
          @left, @right = nil, nil
      end
  end
end
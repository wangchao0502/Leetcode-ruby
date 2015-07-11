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

      def initialize(val, left = nil, right = nil)
          @val = val
          @left, @right = left, right
      end

      def serilaized
        arr = [self.val]
        stack = [self]
        while stack.size > 0
          arr_tmp = []
          node = stack.pop
          [node.right, node.left].each do |x|
            if x.nil?
              arr_tmp.push('#')
            else
              arr_tmp.push(x.val)
              stack.push(x)
            end
          end
          arr.concat(arr_tmp.reverse)
        end
        # remove last '#'
        while arr.last == '#'
          arr.pop
        end
        '{' + arr.join(', ') + '}'
      end


      def self.deserialize(str)
        arr = str.scan(/\d+|#/).collect { |x|
          if x == '#' then
            nil
          else
            x.to_i
          end }
        target = TreeNode.new(arr[0])
        root = target
        i = 1
        stack = [target]
        while i < arr.length
          target = stack.pop
          unless arr[i].nil?
            target.left = TreeNode.new(arr[i])
          end
          unless arr[i + 1].nil?
            target.right = TreeNode.new(arr[i + 1])
          end
          i += 2
          stack.push(target.right) unless target.right.nil?
          stack.push(target.left) unless target.left.nil?
        end
        root
      end
  end
end
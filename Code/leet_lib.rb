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
      arr = []
      queue = [self]
      while queue.size > 0
        node = queue.shift
        if node.nil?
          arr.push('#')
        else
          arr.push(node.val)
        end
        queue.push(node.left) unless node.nil?
        queue.push(node.right) unless node.nil?
      end

      # remove last '#'
      while arr.last == '#'
        arr.pop
      end
      '{' + arr.join(', ') + '}'
    end

    def self.deserialize(str)
      arr = str.scan(/\d+|#/).collect do |x|
        if x == '#'
          nil
        else
          x.to_i
        end
      end
      target = TreeNode.new(arr[0])
      root = target
      i = 1
      queue = [target]
      while queue.size > 0
        node = queue.shift
        unless arr[i].nil?
          node.left = TreeNode.new(arr[i])
          queue.push(node.left)
        end
        unless arr[i + 1].nil?
          node.right = TreeNode.new(arr[i + 1])
          queue.push(node.right)
        end
        i += 2
      end


      root
    end
  end
end
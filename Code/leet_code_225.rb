class Leet_Code_225
  class Stack
    # only push to back, peek/pop from front, size, and is empty operations are valid
    # Initialize your data structure here.
    def initialize
      @size = 0
      @queue = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
      @queue.push(x)
      @size += 1
    end

    # @return {void}
    def pop
      (@size - 1).times do
        @queue.push(@queue.shift)
      end
      @queue.shift
      @size -= 1
      nil
    end

    # @return {Integer}
    def top
      @queue[@size - 1] if @size > 0
    end

    # @return {Boolean}
    def empty
      @size == 0
    end
  end
end
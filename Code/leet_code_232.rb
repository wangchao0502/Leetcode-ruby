class Leet_Code_232
  class Queue

    attr_accessor :size, :queue
    # Initialize your data structure here.
    def initialize
      @queue = []
      @size = 0
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
      @queue[size] = x
      @size += 1
      nil
    end

    # @return {void}
    def pop
      if @size > 0
        (1...@size).each { |i| @queue[i - 1] = @queue[i] }
        @size -= 1
      end
      nil
    end

    # @return {Integer}
    def peek
      @queue[0] if @size > 0
    end

    # @return {Boolean}
    def empty
      @size == 0
    end
  end
end
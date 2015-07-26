class Leet_Code_155
  class MinStack
    # Initialize your data structure here
    def initialize
      @stack = []
      @size = 0
      @min = 0
    end

    # @param {Integer} x
    # @return {Void} nothing
    def push(x)
      if @size == 0
        @stack[0] = 0
        @min = x
      else
        @stack[@size] = x - @min
        @min = x if @min > x
      end
      @size += 1
    end

    # @return {Void} nothing
    def pop
      if @size > 0
        if @stack[@size - 1] < 0
          @min -= @stack[@size - 1]
        end
        @size -= 1
      end
    end

    # @return {Integer}
    def top
      if @size > 0
        if @stack[@size - 1] <= 0
          @min
        else
          @min + @stack[@size - 1]
        end
      end
    end

    # @return {Integer}
    def get_min
      @min
    end
  end
end
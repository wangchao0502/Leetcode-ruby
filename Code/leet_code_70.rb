class Leet_Code_70
  # @param {Integer} n
  # @return {Integer}
  def climb_stairs(n)
    store = {}
    helper(n, store)
  end

  def helper(n, store)
    if n == 1 || n == 0
      return 1
    end
    if n < 0
      return 0
    end
    if store[n - 1].nil?
      store[n - 1] = helper(n - 1, store)
    end
    if store[n - 2].nil?
      store[n - 2] = helper(n - 2, store)
    end
    store[n - 1] + store[n - 2]
  end

end
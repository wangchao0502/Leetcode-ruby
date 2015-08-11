class Leet_Code_62
  # @param {Integer} m
  # @param {Integer} n
  # @return {Integer}
  def unique_paths(m, n)
    arr = Array.new(m + 1) { Array.new(n + 1, nil) }
    helper(arr, m, n)
  end

  def helper(arr, i, j)
    if i == 1 || j == 1
      return 1
    end
    arr[i - 1][j] = helper(arr, i - 1, j) if arr[i - 1][j].nil?
    arr[i][j - 1] = helper(arr, i, j - 1) if arr[i][j - 1].nil?
    arr[i - 1][j] + arr[i][j - 1]
  end

end
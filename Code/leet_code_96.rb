class Leet_Code_96
  # Given n, how many structurally unique BST's (binary search trees) that store values 1...n?
  # For example,
  # Given n = 3, there are a total of 5 unique BST's.
  # def num_trees(n)
  #   F(1, n)
  # end
  #
  # def F(s, t)
  #   if s >= t
  #     1
  #   else
  #     num = 0
  #     for i in s..t
  #       num += f(s, t, i)
  #     end
  #     num
  #   end
  # end
  #
  # def f(s, t, i)
  #   F(s, i - 1) * F(i + 1, t)
  # end

  def num_trees(n)
    arr = Array.new(n + 1, 0)
    # arr record how many unique BST with index nodes
    arr[0] = 1
    for i in 1..n
      for j in 1..i
        arr[i] += arr[j - 1] * arr[i - j]
      end
    end
    arr[n]
  end

end
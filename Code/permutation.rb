class Permutation
  def perm(n)
    (1..n).to_a.permutation.to_a.length
  end
end
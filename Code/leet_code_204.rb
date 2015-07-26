class Leet_Code_204
  # @param {Integer} n
  # @return {Integer}
  def count_primes(n)
    is_prime = Array.new(n + 1, true)
    (2..Math.sqrt(n).to_i).each do |i|
      next unless is_prime[i]
      k = 1
      tmp = i * 2
      while tmp <= n
        is_prime[tmp] = false
        tmp += i
      end
    end
    count = 0
    (2...n).each { |i| count += 1 if is_prime[i] }
    count
  end
end
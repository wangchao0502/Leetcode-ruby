class Leet_Code_13
  # @param {String} s
  # @return {Integer}
  def roman_to_int(s)
    hash = {:I => 1, :V => 5, :X => 10, :L => 50, :C => 100, :D => 500, :M => 1000}
    sum = 0
    arr = s.upcase.split('')
    arr.each_with_index do |x, i|
      if i + 1 < arr.size && hash[x.to_sym] < hash[arr[i + 1].to_sym]
        sum -= hash[x.to_sym]
      else
        sum += hash[x.to_sym]
      end
    end
    sum
  end
end
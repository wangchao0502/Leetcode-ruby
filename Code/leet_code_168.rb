class Leet_Code_168
  # @param {Integer} n
  # @return {String}
  def convert_to_title(n)
    result = []
    while n > 0
      x = (n - 1) % 26
      result.push((x + 65).chr)
      n = (n - 1) / 26
    end
    result.reverse!.join
  end
end
# A -> 1
# B -> 2
# C -> 3
# ...
# Z -> 26
# AA -> 27
# AB -> 28


class Leet_Code_171
  # @param {String} s
  # @return {Integer}
  def title_to_number(s)
    col = 0
    s.split("").each { |x| col = col * 26 + x.upcase.ord - 64 }
    col
  end
end
class Leet_Code_12
  # @param {Integer} num
  # @return {String}
  M = ['', 'M', 'MM', 'MMM']
  C = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
  X = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  I = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  def int_to_roman(num)
    M[num/1000] + C[(num%1000)/100] + X[(num%100)/10] + I[num%10]
  end
end
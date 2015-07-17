class Leet_Code_118
  # @param {Integer} num_rows
  # @return {Integer[][]}
  def generate(num_rows)
    result = []
    return result if num_rows == 0
    (1..num_rows).each do |level|
      this_level = []
      (1..level).each do |i|
        if i == 1 || i == level
          this_level.push(1)
        else
          this_level.push(result[level - 2][i - 2] + result[level - 2][i - 1])
        end
      end
      result.push(this_level)
    end
    result
  end
end
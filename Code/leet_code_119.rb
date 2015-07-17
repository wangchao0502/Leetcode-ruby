class Leet_Code_119
  # @param {Integer} row_index
  # @return {Integer[]}
  def get_row(row_index)
    result = []
    (0..row_index).each do |level|
      result.push(1)
      level.downto(0).each do |i|
        if i >= 1 && i < level
          result[i] += result[i - 1]
        end
      end
    end
    result
  end
end
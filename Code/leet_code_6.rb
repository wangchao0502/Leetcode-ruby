class Leet_Code_6
  # @param {String} s
  # @param {Integer} num_rows
  # @return {String}
  def convert(s, num_rows)
    result = []
    s_a = s.split('')
    i, j, column = 0, 0, 1
    while j < s_a.size
      if column.odd?
        # normal add
        result.push(s_a[j])
        j += 1
      else
        # judge
        row_offset = i % num_rows
        if row_offset == 0 || row_offset == num_rows - 1
          result.push('')
        else
          result[column * num_rows - row_offset - 1] = s_a[j]
          j += 1
        end
      end
      i += 1
      if i % num_rows == 0
        column += 1
      end
    end
    # add less empty
    k = 0
    while k < num_rows - i % num_rows
      result.push('')
      k += 1
    end
    # revert matrix
    final = []
    (0...num_rows).each do |x|
      (0...(result.size / num_rows)).each do |y|
        final.push(result[y * num_rows + x])
      end
    end
    final.join
  end
end
class Leet_Code_14
  # @param {String[]} strs
  # @return {String}
  def longest_common_prefix(strs)
    return '' if strs.size == 0
    prefix = strs[0]
    (1...strs.size).each do |i|
      if strs[i].length == 0
        return ''
      end
      times = [prefix.length, strs[i].length].min
      k = 0
      while times > k
        if prefix[k] != strs[i][k]
          break
        end
        k += 1
      end
      prefix = prefix[0, k]
    end
    prefix
  end
end
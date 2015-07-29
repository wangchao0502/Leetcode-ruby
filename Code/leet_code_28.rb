class Leet_Code_28
  # @param {String} haystack
  # @param {String} needle
  # @return {Integer}
  def str_str(haystack, needle)
    return 0 if needle == ''
    return -1 if haystack.to_s == ''
    index = 0
    while index <= haystack.size - needle.size
      if haystack[index] == needle[0]
        j = 1
        j += 1 while j < needle.size && haystack[index + j] == needle[j]
        return index if j == needle.size
      end
      index += 1
    end
    return -1
  end
end
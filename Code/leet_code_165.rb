class Leet_Code_165
  # @param {String} version1
  # @param {String} version2
  # @return {Integer}
  def compare_version(version1, version2)
    arr_1, arr_2 = [version1, version2].map! { |version| version.split('.').map { |x| x.to_i } }
    i = 0
    while i < [arr_1.size, arr_2.size].max
      arr_1.push(0) if arr_1[i].nil?
      arr_2.push(0) if arr_2[i].nil?
      if arr_1[i] < arr_2[i]
        return -1
      elsif arr_1[i] > arr_2[i]
        return 1
      end
      i += 1
    end
    0
  end
end
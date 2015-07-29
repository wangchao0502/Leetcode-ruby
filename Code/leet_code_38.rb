class Leet_Code_38
  # @param {Integer} n
  # @return {String}
  def count_and_say(n)
    str = '1'
    return str if n == 1
    (n - 1).times do
      j = 0
      new_str = ''
      pre = nil
      count = 0
      while j < str.size
        if pre == nil
          pre = str[j]
          count = 1
        else
          if pre == str[j]
            count += 1
          else
            new_str += (count.to_s + pre)
            pre = str[j]
            count = 1
          end
        end
        j += 1
      end
      if !pre.nil?
        new_str += (count.to_s + pre)
        pre = nil
        count = 0
      end
      str = new_str
    end
    str
  end
end
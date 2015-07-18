class Leet_Code_88
  # @param {Integer[]} nums1
  # @param {Integer} m
  # @param {Integer[]} nums2
  # @param {Integer} n
  # @return {Void} Do not return anything, modify nums1 in-place instead.
  def merge(nums1, m, nums2, n)
    nums3 = nums1.clone
    i, j, k = 0, 0, 0
    while true
      if i < m && j < n
        if nums3[i] < nums2[j]
          nums1[k] = nums3[i]
          i += 1
        else
          nums1[k] = nums2[j]
          j += 1
        end
        k += 1
      else
        break
      end
    end
    if i == m
      while j < n
        nums1[k] = nums2[j]
        j += 1
        k += 1
      end
    elsif j == n
      while i < m
        nums1[k] = nums3[i]
        i += 1
        k += 1
      end
    end
  end
end
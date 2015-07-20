class Leet_Code_223
  # @param {Integer} a
  # @param {Integer} b
  # @param {Integer} c
  # @param {Integer} d
  # @param {Integer} e
  # @param {Integer} f
  # @param {Integer} g
  # @param {Integer} h
  # @return {Integer}
  def compute_area(a, b, c, d, e, f, g, h)
    total = (c - a) * (d - b) + (g - e) * (h - f)
    if a >= g || e >= c || b >= h || f >= d
      total
    else
      total - ((c > g ? g : c) - (a > e ? a : e)) * ((h > d ? d : h) - (f > b ? f : b))
    end
  end
end
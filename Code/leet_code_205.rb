class Leet_Code_205
  def is_isomorphic(s, t)
    s_hash, t_hash = {}, {}
    (0...s.length).each do |i|
      if !s_hash[s[i]] && !t_hash[t[i]]
        s_hash[s[i]] = t[i]
        t_hash[t[i]] = s[i]
      elsif s_hash[s[i]] != t[i] || t_hash[t[i]] != s[i]
          return false
      end
    end
    true
  end
end
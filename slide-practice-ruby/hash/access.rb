h = Hash["a": 100, "b": 200]
# ➔ h[:a] #=> 100
# ➔ h[:c] #=> nil
# ➔ h.keys #=> [:a, :b]
# ➔ h.values #=> [100, 200]

puts h[:a]
p h.keys
p h.values
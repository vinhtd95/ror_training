h = Hash["a": 100, "b": 200, "c": 300]
h1 = Hash["a": 100, "b": 200, "c": 300, "d": 400]
h2 = Hash["b": 200, "c": 300, "a": 100]
# ➔ h == h1 #=> false
# ➔ h == h2 #=> true
# ➔ h1 == h2 #=> false
# ➔ h > h1 #=> false
# ➔ h1 > h #=> true


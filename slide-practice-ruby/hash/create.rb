#new class method
h  = Hash.new          # Hash rỗng, default = nil
h1 = Hash.new("a")     # Hash rỗng, default = "a"
h2 = { "a" => 1 }      # Hash có sẵn cặp key "a" và value 1

#literal
h3 = Hash["a":100, "b":200]
h4 = Hash[[["a", 100], ["b", 200]]]

p h2
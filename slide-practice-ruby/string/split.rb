s = "the quick brown fox jumps over the lazy dog"
res = s.split
p res

input = " apple , banana , orange "

# Tách theo dấu phẩy, sau đó xóa khoảng trắng thừa từng phần tử
result = input.split(",").map(&:strip)

p result 
# => ["apple", "banana", "orange"]
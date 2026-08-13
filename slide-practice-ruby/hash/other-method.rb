user = { name: "Bob", age: 30, status: nil }

# length / size: Trả về số lượng cặp key-value
user.length # => 3
user.size   # => 3

# empty?: Kiểm tra Hash có rỗng hay không
user.empty? # => false
{}.empty?   # => true

# has_key? / include?: Kiểm tra xem key có tồn tại trong Hash không
user.has_key?(:name) # => true
user.include?(:email) # => false

# has_value?: Kiểm tra xem value có tồn tại trong Hash không
user.has_value?(30)   # => true
user.has_value?("CEO") # => false

# any?: Kiểm tra xem CÓ ÍT NHẤT một phần tử thỏa mãn điều kiện hay không
user.any? { |key, value| value.is_a?(Integer) } # => true (vì age là 30)

# 1. compact / compact!: Loại bỏ các phần tử có value là nil
data = { a: 1, b: nil, c: 3 }
data.compact  # => {:a=>1, :c=>3} (data gốc vẫn giữ nguyên)
data.compact! # data gốc bị biến đổi thành {:a=>1, :c=>3}

# 2. merge / merge!: Gộp 2 Hash lại với nhau
h1 = { a: 1, b: 2 }
h2 = { b: 99, c: 3 } # Key :b bị trùng, giá trị của h2 sẽ đè lên h1
h1.merge(h2) # => {:a=>1, :b=>99, :c=>3}

# 3. select / select!: Lọc các phần tử THỎA MÃN điều kiện
scores = { math: 8, english: 4, history: 9 }
scores.select { |subject, score| score >= 5 }
# => {:math=>8, :history=>9}

# 4. reject / reject!: BỎ ĐI các phần tử THỎA MÃN điều kiện (ngược lại với select)
scores.reject { |subject, score| score < 5 }
# => {:math=>8, :history=>9}

# 5. shift: Lấy ra và XÓA LUÔN cặp key-value đầu tiên khỏi Hash
inventory = { apple: 10, banana: 20 }
item = inventory.shift 
# item => [:apple, 10]
# inventory lúc này chỉ còn => {:banana=>20}
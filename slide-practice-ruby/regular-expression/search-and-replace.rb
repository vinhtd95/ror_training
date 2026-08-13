# ^ : Bắt đầu bằng "Ruby"
puts "Đúng" if "Ruby on Rails" =~ /^Ruby/

# $ : Kết thúc bằng "Rails"
puts "Đúng" if "Ruby on Rails" =~ /Rails$/

# [...] : Khớp ký tự nằm trong tập hợp (ví dụ: c, b, hoặc h)
puts "Đúng" if "bat" =~ /[cbh]at/ # Khớp với 'bat', 'cat', 'hat'
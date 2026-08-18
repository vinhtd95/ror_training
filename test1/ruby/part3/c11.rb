users = {
  nam: 28,
  minh: 25,
  an: 30,
  binh: 22
}

ans = users.select do |key, val|
  val >= 25
end

puts ans

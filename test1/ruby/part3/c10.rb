user = {
  name: "Nam",
  age: 28,
  role: "developer"
}

puts user[:name]
puts user[:age]
user[:role] = "senior developer"
user[:email] = "nam@gmail.com"
puts user 
user.delete(:age)
puts user
users = [
  { name: "Nam", age: 28, active: true },
  { name: "Minh", age: 22, active: false },
  { name: "An", age: 30, active: true },
  { name: "Binh", age: 17, active: true }
]

def active_adult_users(users) 
  ans = []
  users.each do |x| 
    if x[:active] == true && x[:age] >= 18
      ans << x 
    end
  end
  ans 
end

p active_adult_users(users)

#select method
my_array = [1,2,3,4,5,6,7,8,100]
p my_array.select{|item| item%2==0}
puts

my_hash = {"Joe" => "male", "Jim" =>"male", "Patty" => "female"}
p my_hash.select{|name, gender| gender == "male"}
puts

#map method
my_array = [1,2,3,4,5,6,7,8,100]
p my_array.map{|item| item*2}
puts

#inject method
my_array = [1,2,3,4,5,6,7,8,100]
p my_array.inject(0){|running_total, item| running_total + item}
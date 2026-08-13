person = { name: "Alice", age: 25, job: "Developer" }

person.each{|key, value| puts "#{key} is #{value}"} 
puts

person.each_key{|key| puts key}
puts

person.each_value{|value| puts value}
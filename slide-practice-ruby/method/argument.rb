def calculate_value(x, y)
  x + y
end
puts calculate_value(3, 5)
puts

def calculate_value2(value='default', arr=[])
  puts value
  puts arr.sum
end
puts calculate_value2([3, 5, 7])
puts

def calculate_value3(x,y,*otherValues)
  puts otherValues
end
puts calculate_value3(1,2,3,4,5,6)
puts

def accepts_hash(arguments)
  print "got: ", arguments.inspect #will print out what it received
end

def calculate_value4(a, b, c: true, d:1)
  puts a, b, c, d
end
calculate_value4(1, 2, c:false)
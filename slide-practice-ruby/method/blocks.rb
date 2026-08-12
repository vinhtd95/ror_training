1.upto(10){|x| puts x}
puts 
#######################
1.upto(10) do |x|
  puts x 
end
puts
#######################
array = [1,2,3,4]
array.collect! do|n|
  n**2
end
p array
puts
#######################
class Array
  def iterate!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

array = [1,2,3,4]
array.iterate! do|n|
  n **2
end
p array
puts
#######################
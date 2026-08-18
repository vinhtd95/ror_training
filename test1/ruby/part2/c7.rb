numbers = [1, 2, 3, 4, 5]

numbers.each do |x| 
  puts x 
end

res = numbers.map do |x| 
  x * 2 
end

p res 

# each:  giá trị trả về là mảng ban đầu, ko bị thay đổi bởi code thực thi bên trong
# map: trả về mảng mới 

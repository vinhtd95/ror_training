i = 0
until i > 10 
  puts ("Inside the loop i = #{i}")
  i += 1
end
puts

i = 0
begin 
  puts("Inside the loop i = #{i}")
  i += 1
end until i > 10

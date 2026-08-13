a = 10
b = "42"

begin
  a + b 
rescue
  puts "Could not add variables a (#{a.class}) and b (#{b.class})"
else
  puts "a + b is #{a + b}"
end
puts 
#############################################
values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

while values.length > 0
  c = values.pop
  d = values.pop 

  begin 
    c + d
  rescue
    puts "Could not add variables a (#{c.class}) and b (#{d.class})"
  else
    puts "c + d is #{c + d}"
  end
end


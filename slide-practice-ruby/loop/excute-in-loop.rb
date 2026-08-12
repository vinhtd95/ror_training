#break
for i in 0..5
  if i > 2 then
    break
  end
  puts "Value of local variable is #{i}"
end
puts

#next
for i in 0..5
  if i < 2 then
    next
  end
  puts "Value of local variable is #{i}"
end
puts

#redo
for i in 0..5
  if i < 2 then
    puts "Value of local variable is #{i}"
    redo 
  end
end
puts

#retry
begin
  do_something # exception raised
rescue
  # handles error
  retry # restart from beginning
end

for i in 1..5
retry if some_condition # restart from i == 1
end
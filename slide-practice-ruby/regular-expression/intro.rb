line1 = "Cats are smarter than dogs"
line2 = "Dogs also like meat"

puts "Line1 contains Cats" if (line1 =~ /Cats(.*)/)
puts "Line2 contains Dogs" if (line2 =~ /Cats(.*)/)
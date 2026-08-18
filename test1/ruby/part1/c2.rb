str = "Ruby Programming"

puts str.length  
puts str.upcase 
puts str.downcase 
puts true if str =~ /\bRuby\b/
str[0, 4]= "Rails"
puts str
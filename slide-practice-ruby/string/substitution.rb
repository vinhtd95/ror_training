s = "the quick brown fox jumps over the lazy dog"
puts s.gsub(/[aeiou]/, "*")
puts s.gsub('e', '*')
puts s.sub(/./){|c|c.ord.to_s}
puts s
puts

str = "the quick brown fox jumps over the lazy dog"
puts str.gsub!(/[aeuio]/, '5')
puts str

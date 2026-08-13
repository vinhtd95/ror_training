#phuong thuc send() 
class Rubyist 
  def welcome(*args)
    "Welcome " + args.join(" ")
  end
end
obj = Rubyist.new 
puts (obj.send(:welcome, "famous", "Rubyists"))

#respond_to?
class Rubyist
end

rubyist = Rubyist.new 
if rubyist.respond_to?(:also_railist)
  puts rubyist.send(:also_railist)
else
  puts "No such information available"
end
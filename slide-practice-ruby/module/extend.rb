module Foo 
  def module_method 
    puts "Module Method Invoked"
  end
end

class Bar 
  # extend Foo  bổ sung phương thức cho tất cả cá thể
end

bar = Bar.new 
bar.extend Foo  #Chỉ bổ sung phương thức cho duy nhất cá thể đó
bar.module_method 

#### extend callback
module Foo
def self.extended base
puts "Class #{base} has been extended with module #{self} !"
end
end

class Bar
extend Foo
end

#=> Class Bar has been extended with module Foo !
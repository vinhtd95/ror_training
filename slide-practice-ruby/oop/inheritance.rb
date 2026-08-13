class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name 

  def initialize n 
    self.name = n  #Gọi phương thức getter name của chính đối tượng chó này để lấy ra tên của nó".
  end
  
  def speak
    "#{self.name} say arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Lol")
paws = Cat.new 

puts sparky.speak # => Sparky says arf!
puts paws.speak # => Hello!
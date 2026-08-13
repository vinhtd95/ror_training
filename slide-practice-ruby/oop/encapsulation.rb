class GoodDog
  DOG_YEARS = 7
  attr_accessor :name, :age 

  def initialize n, a 
    self.name = n  
    self.age = a 
  end

  private
  def human_years 
    age * DOG_YEARS
  end
end

sparky = GoodDog.new"Sparky", 4
# p sparky.human_years -> không hoạt động vì là private method 

class Animal 
  def a_public_method
    "Will this work?" + self.a_protected_method
  end
  protected
  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new 
p fido.a_public_method 

# fido.a_protected_method
# # => NoMethodError: protected method
class User
  attr_accessor :name, :email, :age 
  def initialize name, email, age 
    @name = name 
    @email = email 
    @age = age 
  end

  def adult?
    if @age >= 18 
      true
    else 
      false
    end
  end
end

user1 = User.new("Nam", "nam@gmail.com", 28)
puts user1.name 
user1.name= "Duc"
puts user1.name
puts user1.adult?


module Loggable
  def log(message)
    puts "[LOG] #{message}"
  end
end

class User
  include Loggable
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

user = User.new("Nam", "nam@example.com", 28)

user.log("User created")

#include cho phép chạy các phương thức trong module Loggable vào User dưới dạng instance method

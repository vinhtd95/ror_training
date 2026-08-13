# class GoodDog
# end
# sparky - GoodDog.new

class Box 
  #initialize method
  def initialize w, h 
    @width = w 
    @height = h 
  end

  #accessor method
  def getWidth
    @width
  end
  def getHeight
    @height
  end

  #setter method
  def setWidth= value 
    @width = value 
  end
  def setHeight= value 
    @height = value 
  end

  # Tự động tạo getter (.width, .height) và setter (.width=, .height=)
  # attr_accessor :width, :height

  #instance method
  def getArea
    @width * @height
  end
end

#create an object
box = Box.new 10, 20

#use setter method
box.setWidth = 30
box.setHeight = 50

#use accessor method
x = box.getWidth
y = box.getHeight

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

a = box.getArea
puts "Area of the box is: #{a}"


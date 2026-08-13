#print out all of the objects in our system
ObjectSpace.each_object(Class) {|c| puts c}
#Get all the methods on an object
"Some String".methods
#see if an object responds to a certain method
obj.respond_to?(:length)
#see if an object is a type
obj.kind_of?(Numeric)
obj.instance_of?(FixNum)
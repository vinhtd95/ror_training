module Perimeter
  class Array
    def initialize 
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new 
ruby_array = Array.new 

p our_array.class 
p ruby_array.class 
puts 
############################################
module Gym 
  class Push
    def up
      puts 40
    end
  end
end


module Dojo
  class Push 
    def up 
      puts 30
    end
  end
end


dojo_push = Push.new
p dojo_push.up #=> 30
gym_push = Push.new
p gym_push.up #=> 40
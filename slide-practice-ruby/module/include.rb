#include
module Foo 
  def foo_name
    puts "My name is Boo!"
  end
end
class Bar 
  include Foo  
end

Bar.new.foo_name

#include callback
module Foo
  # Callback này tự động chạy khi Foo được include
  def self.included(klass)
    puts "Foo has been included in class #{klass}"
  end
end

class Bar
  include Foo # <--- Ngay tại dòng này, Ruby tự động gọi Foo.included(Bar)
end

###
module Sample
  # Tập hợp các phương thức muốn làm Class Method
  module ClassMethods
    def find_active; end
  end

  # Tập hợp các phương thức muốn làm Instance Method
  module InstanceMethods
    def save_log; end
  end

  # Khi một Class include Sample, tự động phân bổ:
  def self.included(receiver)
    receiver.extend ClassMethods                # Thêm Class Methods
    receiver.send(:include, InstanceMethods)    # Thêm Instance Methods
  end
end

#  Lúc này, Class User chỉ cần gõ 1 dòng:
# class User
#   include Sample
# end

#  Tự động có cả 2:
# User.find_active # Class Method (nhờ receiver.extend)
# User.new.save_log # Instance Method (nhờ receiver.include)

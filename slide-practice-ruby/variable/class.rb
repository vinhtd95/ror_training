class School
  @@no_off_students = 650
end

class V < School
  @@no_off_students = 75
end

class V1 < School
  @@no_off_students = 80
end

puts School.class_eval("@@no_off_students")
puts V.class_eval("@@no_off_students")
puts V1.class_eval("@@no_off_students")

# Trong Ruby, biến class (@@) được chia sẻ dùng chung giữa class cha (School) và tất cả các class con kế thừa từ nó (V và VI). Chúng không tạo ra các bản sao độc lập cho từng class con.
# để có giá trị riêng, dùng instance variable
p1 = File.new("dummy_file.txt", "w+")
p1.close #phai dong file thi moi xoa duoc
File.delete("dummy_file.txt")
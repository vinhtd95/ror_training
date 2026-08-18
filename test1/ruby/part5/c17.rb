# a. xảy ra exception chia cho số 0
# b. khi code trong begin gặp exception, chương trình sẽ nhảy vào rescue, rescue có tác dụng giải quyết các exception catch được ở begin 
# c 
begin
  result = 10 / 0
  puts result
rescue ZeroDivisionError => e
  puts e.message
end


numbers = [1, 2, 3, 4, 5]

numbers.each do |number|
  next if number.even?

  puts number
end
#next: bỏ qua code bên dưới next, chạy sang vòng lặp tiếp theo
#break: thoát khỏi vòng lặp luôn
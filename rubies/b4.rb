def move_zeroes(nums)
    zeroes, not_zeroes = nums.partition{|x| x == 0}
    nums.replace(not_zeroes + zeroes)
end

nums = gets.chomp.split(" ")
nums.map! do |x|
    x.to_i
end

p move_zeroes(nums)



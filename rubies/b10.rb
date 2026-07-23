def binary_search(nums, target)
  r = nums.length - 1
  l = 0
  while(l <= r)
    m = (r + l) / 2
    if(nums[m] == target)
      return m 
    elsif (nums[m] < target)
      l = m + 1
    else
      r = m - 1 
    end
  end
  return -1
end

nums = gets.chomp.split.map(&:to_i)
target = gets.chomp.to_i
p binary_search(nums, target)



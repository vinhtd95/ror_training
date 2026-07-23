def product_except_self(nums)
  n = nums.length
  res = Array.new(n, 1)

  prefix = 1
  (0..n-1).each do |i|
    res[i] = prefix
    prefix *= nums[i]
  end

  suffix = 1
  (n-1).downto(0) do |i|
    res[i] *= suffix
    suffix *= nums[i]
  end

  res
end

input = gets.chomp.split.map(&:to_i)

p product_except_self(input)




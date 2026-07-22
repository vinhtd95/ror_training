nums = gets.chomp.split(" ")
nums.map! do |x|
    x.to_i
end

target = gets.chomp.to_i

def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |val, idx|
        remain = target - val 
        if hash.key?(remain)
            puts "[#{hash[remain]}, #{idx}]"
            return 
        else
            hash[val] = idx
        end
    end
end

two_sum(nums, target)
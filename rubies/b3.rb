def character_frequency(str)
    hash = Hash.new(0)
    ln = str.length 
    for i in 0..(ln-1)
        hash[str[i]] += 1
    end
    ans = hash.sort_by{|k, v| -v}.to_h
    return ans
end

str = gets.chomp
p character_frequency(str)
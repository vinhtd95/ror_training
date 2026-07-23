require "debug"
def longest_unique_substring(str)
    l = 0
    r = 0
    max = -1
    hash = Hash.new(0)
    ln = str.length

    while r < str.length
        hash[str[r]] += 1
        while hash[str[r]] > 1
            hash[str[l]] -= 1
            l+= 1
        end
        ans = r - l + 1
        max = [max, ans].max
        r += 1
    end
    max 
end

str = gets.chomp
p longest_unique_substring(str)
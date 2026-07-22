
def reverse_string(str)
    ans = ""
    i = str.length - 1

    while i >= 0
        ans += str[i]
        i -= 1
    end
    return ans 
end

str = gets.chomp
puts reverse_string(str)
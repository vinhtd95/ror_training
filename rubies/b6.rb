def first_unique_character(str)
    char_count = Hash.new(0)
    str.each_char do |x|
        char_count[x] += 1
    end
    str.each_char do |x|
        if char_count[x] == 1
            p x
            return true
        end
    end
end

str = gets.chomp
first_unique_character(str)
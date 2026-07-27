def group_anagrams(words)
    groups = Hash.new{|hash, key| hash[key] = []}
    words.each do |word|
        char_count = Array.new(26, 0)
    word.each_char do |char|
            idx = char.ord - 'a'.ord #tra ve ASCII
            char_count[idx] += 1
        end
        groups[char_count] << word
    end
    # TODO : Trả về groups.values (array các nhóm) thay vì Hash cho đúng format đề bài
    groups
end

input = gets.chomp.split(" ")
ans = group_anagrams(input)

# TODO : iterate vòng lặp theo array sau khi sửa
ans.each do |k, v|
    p v
end

#eat tea tan ate nat bat

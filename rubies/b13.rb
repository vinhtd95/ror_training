def my_map(array)
    result = []
    array.each do |element|
        result << yield(element)
    end
    result
end

p my_map([1, 2, 3]){|x| x*2}
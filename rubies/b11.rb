def flatten_array(arr)
  result = []
  arr.each do |element|
    if element.is_a?(Array)
      result.concat(flatten_array(element))
    else
      result << element
    end
  end
  result
end

input = [1, [2, [3, 4, 100], 5], 6]
p flatten_array(input)
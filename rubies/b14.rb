def my_select(array)
  result = []
  array.each do |element|
    if yield(element)
      result << element
    end
  end
  result 
end

p my_select([1,2,3,4,5]) {|x| x.even?}

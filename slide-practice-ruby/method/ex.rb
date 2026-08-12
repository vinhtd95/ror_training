# - Use Block to convert array of string to uper case
# input: strings = [“a”, “b”, “c”]
# output: up_strings = [“A”, “B”, “C”]
# - Write a function that accepts a block and execute the block if the block given

strings = ['a', 'b', 'c']

class Array
  def iterate!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

strings.iterate! do |n|
  n.upcase
end

p strings
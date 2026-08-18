puts File.read("users.txt")

sample = File.open("users.txt", "a+")
sample.puts("New user")
puts File.read("users.txt")
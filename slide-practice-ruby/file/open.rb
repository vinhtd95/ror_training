# ● r: read-only (starts at beginning of file)
# ● w: write-only (if the file exists, overwrites everything in the file)
# ● w+: read and write (if the file exists, overwrites everything in the file)
# ● a+: read-write (if file exists, starts at end of file. Otherwise creates a new file). Suitable for updating files.


# Spits out entire contents of the file.
puts File.read("simple_file.txt")
# Reads the entire file based on individual lines and returns those lines in an array.
p File.readlines("simple_file.txt")

sample = File.open("write.txt", "a+")
sample.puts("another example of writing to a file. con meo")
puts File.read("write.txt")

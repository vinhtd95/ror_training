100.times do
  sleep 0.1
  puts "Record saved ..."
  File.open("server.log", "a") {|f| f.puts "Server started ar: #{Time.new}"}
end

require "open-uri"

start_year = 1900
end_year = 2000
remote_base_url = "https://en.wikipedia.org/wiki"

(start_year..end_year).each do |yr|
  rdata = nil

  begin  
    rpage = URI.open("#{remote_base_url}/#{yr}")
    rdata = rpage.read 
  rescue StandardError => e 
    puts "Error at #{yr}: #{e}"
  ensure 
    puts "sleeping..."
    sleep 1
  end

  if rdata 
    File.open("copy-of-#{yr}.html", "w") { |f| f.write(rdata) }
    puts "Successfully saved copy-of-#{yr}.html"
  end
end
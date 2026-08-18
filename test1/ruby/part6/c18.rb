email1 = "nam@gmail.com"
email2 = "nam@example.com"
email3 = "nam.com"
email4 = "nam@gmail"

if email3 =~ /\A.+@.+\..+\z/
  puts "is email"
else
  puts "is not email"
end


def check_age(age)
  if age < 13
    "Child"
  elsif age in (13..17)
    "Teenager"
  elsif age in (18..59)
    "Adult"
  else
    "senior"
  end
end

puts check_age(40)
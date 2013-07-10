def convert_age(age_in_seconds)
  result = "%.2f" % (age_in_seconds / 60.0 / 60.0 / 24.0 / 365.0)
end

puts convert_age(979000000)
  

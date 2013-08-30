h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

# member? return true if the given key is present in hash
puts h.member?("Matz") #false

puts h.member?("Python") #true

# include? return true if the given key is present in hash
puts h.include?("Guido") #false

puts h.include?("Ruby") #true

# has_value? return true is the given value is present in hash
puts h.has_value?("Larry") #true

# puts h.exists?("Perl") # error no method

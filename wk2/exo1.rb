s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
# Initialize a counter
counter=1
# Split the string and iterate on all elements
s.split("\n").each do |line|
  puts "Line #{counter}: #{line}"
  counter=counter+1
end

s.each_with_index do |line,x|
  puts "#{line}:#{x}"
end

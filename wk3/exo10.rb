collection = [1, 2, 3, 4, 5]
puts collection.inject{|sum,x| sum+x}
puts collection.reduce(:+)

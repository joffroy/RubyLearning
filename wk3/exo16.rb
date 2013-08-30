a = ["Magazine", "Sunday", "Jump"]
puts '1. a.sort'
puts a.sort
puts '2. a.sort { |s| s}'
# puts a.sort { |s| s }
puts '3. a.sort { |l, r| l <=> r }'
puts a.sort { |l, r| l <=> r }
puts '4. a.sort { |l, r| l.length <=> r.length }'
puts a.sort { |l, r| l.length <=> r.length } # correct because the comparison is done on the length
puts '5. a.sort_by { |s| s}'
puts a.sort_by { |s| s }
puts '6. a.sort_by { |s| s.length }'
puts a.sort_by { |s| s.length } # correct because the comparison is done on the length

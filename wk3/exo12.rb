quiz = [0,0,0,1,0,0,1,1,0,1]
puts "The number of participants who did not attempt Quiz 1 is \
#{quiz.find_all{|value| value == 0}.inject(0){|sum| sum + 2}} \
out of #{quiz.length} total participants."

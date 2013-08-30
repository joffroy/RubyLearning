#  (1..100).each do |number|
#    str = ''
#    str.concat("#{number}") unless number%3 == 0 or number%5 == 0
#    str.concat('Fizz') if number % 3 == 0
#    str.concat('Buzz') if number % 5 == 0
#    puts str
#  end
(1..100).each do |number|
  str = ''
  str += 'Fizz' if number % 3 == 0
  str += 'Buzz' if number % 5 == 0
  puts (str == '' ? number : str)
end

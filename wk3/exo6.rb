require './prompt'
include Prompt
years = (1930...1950).to_a
while (str = prompt('You said: ')) != 'BYE' do
  puts "Grandma responds: NO, NOT SINCE #{years[rand(years.size)]}" if (str == str.upcase)
  puts "Grandma responds: HUH?! SPEAK UP, SONNY!" if (str != str.upcase)
end

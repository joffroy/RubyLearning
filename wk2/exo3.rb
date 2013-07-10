=begin
doctest: 2000 is a leap year
>> leap_year?(2000)
=> true
doctest: 1997 is not a leap year
>> leap_year?(1997)
=> false
doctest: 1900 is not a leap year
>> leap_year?(1900)
=> false
doctest: 1996 is a leap year
>> leap_year?(1996)
=> true
=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

=begin
doctest: 1996 has 527040 minutes
>> year_to_minutes(1996)
=> 527040
doctest: 1900 has 525600 minutes
>> year_to_minutes(1900)
=> 525600
=end

def year_to_minutes(year)
  (leap_year?(year)) ? 366 * 24 * 60 : 365 * 24 * 60
end

if __FILE__ == $PROGRAM_NAME

  puts "2000 has #{year_to_minutes(2000)} minutes"
  puts "1997 has #{year_to_minutes(1997)} minutes"
end

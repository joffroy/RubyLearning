=begin
 Using what we learned, I created a method to convert seconds into month and days
 Firstly, I convert the seconds into years and I keep the integer part of the
 floating number.
 Secondly, on the decimal part, I calculate the number of months.
 Finally, I concatanate all elements into a string that the method returned
=end
def convert_second_to_year_and_month(seconds)
    years_floating = seconds / 60.0 / 60.0 / 24.0 / 30.4368 / 12
    years = (years_floating * 1).to_i
    months = (years_floating%1 *12).to_i
    sentence = "I'm "+years.to_s+" years and "+months.to_s+
    " months (that correponds to "+seconds.to_s+" seconds)."
end

=begin
 Another way I have found to resolve the problem is to use a class
 This class contains three attributes, one to write and two to read
 I have a method to calculate. 
=end
class Age
    attr_writer :age_in_seconds
    attr_reader :year
    attr_reader :month
    def initialize(age_in_seconds)
        @age_in_seconds = age_in_seconds
    end
    
    def convert_age_in_seconds_to_year_and_month
        years_floating = @age_in_seconds / 60.0 / 60.0 / 24.0 / 30.4368 / 12
        @year = (years_floating * 1).to_i
        @month = (years_floating%1 *12).to_i
        "I'm #{year} years and #{month} months (that correponds to #{age_in_seconds} seconds)."
    end
end

# array that contains all the seconds
ages = [979000000,2158493738,246144023,1270166272,1025600095]

# iteration on all elements contained in the array
ages.each do |seconds|
    puts convert_second_to_year_and_month(seconds)
end

ages.each do |seconds|
    age = Age.new(seconds)
    age.convert_age_in_seconds_to_year_and_month
    puts "I'm #{age.year} years and #{age.month} months (that correponds to #{seconds} seconds)."
end
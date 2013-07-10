# I use this class to register objects that manage conversion.
# By do it this way, I can register many different conversion type.
# Another point, if I forget one conversion, I can add it easily
# I have two different methods: 
#  - one to register the object for the conversion
#  - one to realize the conversion
class ConvertFactory
  attr_reader :register
    
  def initialize
    @register = {} 
  end

  # doctest: setup
  # >> factory = ConvertFactory.new
  # doctest: register a conversion    
  # >> factory.register_conversion('meter2centimeter', MeterToCentimeter.new).class
  # => MeterToCentimeter
  def register_conversion(name, converter)
      @register[name] = converter
  end
    
  # doctest: convert meter to centimeter 
  # >> factory.convert('meter2centimeter', 10)
  # => 1000.0 
  # >> begin
  #    factory.convert('something that does not exist', 10) 
  #    rescue => e 
  #    e.class 
  #    end
  # => NoMethodError
    def convert(name, value)
      @register[name].convert(value)
    end
end

# This class manage the conversion from meter to kilometer
class MeterToKilometer
    def convert(value)
         value / 1000.0
    end
end

# This class manage the conversion from meter to centimer
class MeterToCentimeter
    def convert(value)
         value*100.0
    end
end

# This class manage the conversion from celsius to kelvin
class CelsiusToKelvin
    def convert(value)
         value+273.15
    end
end

# This class manage the conversion from celsius to farheneit
class CelsiusToFarheneit
    def convert(value)
         value * 1.8 + 32.0
    end
end

# This class manage the conversion from celsius to rankine
class CelsiusToRankine
    def convert(value)
         value * 1.8 + 491.67
    end
end

# This class manage the conversion from celsius to romer
class CelsiusToRomer
    def convert(value)
         value * 21.0 / 40.0 + 7.5
    end
end

# This class manage the conversion from celsius to reaumur
class CelsiusToReaumur
    def convert(value)
         value * 4.0/5.0
    end
end

# This class manage the conversion from celsius to newton
class CelsiusToNewton
    def convert(value)
         value * 33.0/100.0
    end
end


# Finally, I add this class to manage a generic prompt
class UserPrompt
    def prompt(text)
        puts text
        STDOUT.flush
         gets.chomp
    end
end
if __FILE__ == $PROGRAM_NAME
  # I declare a variable for my factory
  conversion_factory = ConvertFactory.new
  # I add inside the difference object instance to manage the meter conversion
  conversion_factory.register_conversion("meter2kilometer",MeterToKilometer.new)
  conversion_factory.register_conversion("meter2centimeter",MeterToCentimeter.new)
  
  # I add inside the difference object instance to manage the celsius conversion
  conversion_factory.register_conversion("celsius2kelvin",CelsiusToKelvin.new)
  conversion_factory.register_conversion("celsius2farheneit",CelsiusToFarheneit.new)
  conversion_factory.register_conversion("celsius2newton",CelsiusToNewton.new)
  conversion_factory.register_conversion("celsius2rankine",CelsiusToRankine.new)
  conversion_factory.register_conversion("celsius2romer",CelsiusToRomer.new)
  conversion_factory.register_conversion("celsius2reaumur",CelsiusToReaumur.new)
  
  # I declare a variable to manage the user prompt
  user_prompt = UserPrompt.new
  # I ask for the value
  value_to_convert = user_prompt.prompt("What is the value to convert: ")
  # I show all available conversion
  puts "Possible conversion\n"
  conversion_factory.register.keys.each do |possible_conversion|
      puts possible_conversion
  end
  # And ask to the user to take one
  conversion_type = user_prompt.prompt("Which type of conversion: ")
  
  #Finally, I display the conversion
  conversion_result = conversion_factory.convert(conversion_type,value_to_convert.to_f)
  if (conversion_result != nil)
      unities = conversion_type.split("2")
      puts "#{value_to_convert} #{unities.at(0)} = #{conversion_result} #{unities.at(1)}"
  else
      puts "No converter available for: #{conversion_type}"
  end
end

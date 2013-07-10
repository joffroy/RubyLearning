class Temperature
    attr_reader :celsius
    attr_reader :farheneit
    attr_reader :kelvin
    def celsius=(degree)
        @celsius=degree
        convert_all("celsius")
    end
    
    def farheneit=(degree)
        @farheneit=degree
        convert_all("farheneit")
    end
    
    def kelvin=(degree)
        @kelvin=degree
        convert_all("kevin")
    end
    
    def convert_all(measure)
       case measure
           when "celsius"
            @kelvin = @celsius + 273.15
            @farheneit = @celsius * 1.8 + 32.0
           when "farheneit"
            @celsius = (@farheneit - 32.0) / 1.8
            @kelvin = (@farheneit - 32.0) / 1.8 + 273.15
           else
            @celsius = @kelvin - 273.15
            @farheneit = (@kelvin - 273.15)* 1.8000 + 32.00
       end
    end
end

class ConvertFactory
    attr_reader :register
    
    def initialize
        #register = Hash.new
    end
    
    def register_conversion(name,converter)
        puts "dans register"
        #if (@register[name] == nil)
        #    puts "dans if"
        #    @register[name] = converter
        #end
        puts "fin register"
    end
    
    def convert(name, value)
        if (@register[name] != nil)
            return @register[name].convert(value)
        end
    end
end

class MetreToKilometer
    def convert(value)
        return value * 1000
    end
end

conversionFactory = ConvertFactory.new
conversionFactory.register_conversion("metre2kilometre",MetreToKilometer.new)
puts "apres register"
        
=begin
temp = Temperature.new
temp.celsius = 30
puts "#{temp.celsius} C = #{temp.farheneit} F = #{temp.kelvin} K"
temp.kelvin = 30
puts "#{temp.celsius} C = #{temp.farheneit} F = #{temp.kelvin} K"
puts "%.2f" % temp.celsius
temp.farheneit = 30
puts "#{temp.celsius} C = #{temp.farheneit} F = #{temp.kelvin} K"
=end
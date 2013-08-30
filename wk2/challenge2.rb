=begin
doctest: a true condition
>> formal_logic(true, 'true', 'false')
=> "true"
doctest: a false condition
>> formal_logic(false, 'true', 'false')
=> "false"
doctest: is not a boolean condition
>> begin 
   formal_logic('test', 'true', 'false')
   rescue => e
   e.class
   end
=> RuntimeError
=end
def formal_logic(condition, true_result, false_result)
  !!condition == condition and (condition and true_result or false_result) or raise 'Not a boolean'
end

if __FILE__ == $PROGRAM_NAME
  puts formal_logic(5<3, 'yeah', 'boo')
  puts formal_logic(5>3, 'yeah', 'boo')
  puts formal_logic('test', 'yeah', 'boo')
end

=begin
doctest: A string returns itself in Ruby 
>> "Hello World!"
=> "Hello World!"
doctest: I can greet the world
>> hello
=> "Hello World!"
doctest: I can greet someone personally
>> hello('Cedric')
=> "Hello Cedric!"
>> hello('Santa')
=> "Hello Santa!"
doctest: I can as if someone is there
>> hello('Victor', '?')
=> "Hello Victor?"
=end

def hello(name = 'World', punctuation = '!')
  "Hello #{name}#{punctuation}"
end

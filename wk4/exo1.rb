class Dog
  def initialize name="Tom"
    @name = name
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def eat
    puts 'Miam!'
  end

  def chase_cat
    puts "Run run #{@name}"
  end
end

d = Dog.new('Leo')
d.bark
d.chase_cat

e = Dog.new
e.bark
e.chase_cat

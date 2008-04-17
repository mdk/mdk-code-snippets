class Person 

  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def ==(other)
    (other.name == @name)
  end

end

john = Person.new("John")
mary = Person.new("Mary")
john2 = Person.new("John")

puts "John is Mary: #{john == mary}"
puts "Mary is John: #{mary == john}"
puts "John is John: #{john2 == john}"

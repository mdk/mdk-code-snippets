require 'rubygems'
require 'json'

# A basic class representing the person
class Person 
 
  # Creates new person with the given name, company and e-mail.
  def initialize(name, company, mail)
    @name, @company, @mail = name, company, mail
  end

  # A converter to json implementation.
  def to_json(*a)
    {
      'person'  => {  
        'name'    => @name,
        'company' => @company,
        'mail'    => @mail
      }
    }.to_json(*a)
  end

end

data = File.read('sample.json')
puts "From JSON: #{JSON.parse(data) ['person']['company']}"

people = []
people << Person.new("Michael", "Nokia", "mdk@mdk.am")
people << Person.new("Xan", "Nokia", "xan@hell.es")
people << Person.new("Tommi", "Nokia", "tko@heaven.fi")
puts "To JSON: #{JSON.pretty_generate(people)}"



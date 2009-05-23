require 'rubygems'
require 'dm-core'

class Person
  include DataMapper::Resource
  
  property :id, Serial
  property :name, Text
  property :surname, Text
end

DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/test.db")
DataMapper.auto_migrate!

# Create new person
p = Person.new(:name => 'Michael', :surname => 'Dominic')
# Save to database
p.save or raise 'Failed to save person to database!'


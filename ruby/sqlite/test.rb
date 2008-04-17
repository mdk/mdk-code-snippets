require 'rubygems'
require 'sqlite3'

class Database

  # Initialize
  def initialize
    @db = SQLite3::Database.new(':memory:')
    @db.results_as_hash = true
    create_tables
    fill_data
  end

  # List all the dogs in the database
  def list_dogs
    @db.execute('SELECT * from dogs') { |row|
      puts "#{row ['id']} #{row ['name']}"
    }
  end

  private

  # Create database tables
  def create_tables
    @db.execute('CREATE TABLE dogs (id INTEGER PRIMARY KEY, name VARCHAR (50))')
  end

  # Fill database with some default values
  def fill_data
    add_dog('walt')
    add_dog('foggy')
    add_dog('lister')
  end

  # Add a dog to the database
  def add_dog(name)
    @db.get_first_value('INSERT INTO dogs VALUES (null, :name)', 
                        ':name' => name)
  end

end

my_db = Database.new 
my_db.list_dogs

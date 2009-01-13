# Primitive MySQL direct usage

require 'mysql'

# Connect
connection = Mysql.real_connect("host.databases.com", 
                                "database_name", 
                                "password", 
                                "database_name")

# Do sample query
result = dbh.query('SELECT id, name FROM myTable')
result.each { |row|
  puts "id: #{row[0]} name: #{row[1]}"
}

# Free the result and disconnect
result.free
connection.close

require 'rss/maker'

version = "2.0" # ["0.9", "1.0", "2.0"]
destination = "output.xml" # local file to write

content = RSS::Maker.make(version) { |m|
  m.channel.title = "Example feed"
  m.channel.link = "http://www.example.com"
  m.channel.description = "This is a sample description"
  m.items.do_sort = true # sort items by date
  
  item1 = m.items.new_item
  item1.title = "This is first item"
  item1.link = "http://www.example.com/first/"
  item1.date = Time.parse("2007/2/11 14:01")

  item2 = m.items.new_item
  item2.title = "This is second item"
  item2.link = "http://www.example.com/second/"
  item2.description = "This is a sample description."
  item2.date = Time.now
}

# Write to the file
File.open(destination,"w") { |f|
  f.write(content)
}


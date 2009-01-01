require 'rubygems'
require 'builder/xmlmarkup'

f = File.open('output.xml', 'w')
xml = Builder::XmlMarkup.new(:target => f, :indent => 1)

# Simple metadata
xml.instruct!
xml.comment! "This is a sample output document"

# Simple elements writing
xml.title "This is a title element"
xml.author "Michael Dominic K.", :gender => "male"

# Complex/nested elements writing
xml.content(:type => 'book') {
  xml.page1 "First piece"
  xml.page2 "Second piece"
  xml.page3 "Third piece"
  xml.cover "Cover string", :material => "cardboard"
}


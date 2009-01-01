require 'rubygems'
require "atom/feed" 

entry1 = Atom::Entry.new
entry1.id = "id:entry-1"
entry1.title = "Entry 1" 
entry1.content = "some <em>boring</em> HTML" 
entry1.content.type = "html" 
entry1.published = Time.now
entry1.authors.new :name => "Michael Dominic K.", :uri => "http://www.mdk.org.pl"
entry1.links.new :href => "http://www.mdk.org.pl/entr1", :rel => "alternate", :type => "text/html"

feed = Atom::Feed.new
feed << entry1

puts feed.to_s

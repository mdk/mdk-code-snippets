require 'rexml/document'
require 'net/http'
require 'date'

class RssFeed

  def initialize(url)
    @url = url
    @list = []
  end

  def fetch
    data = Net::HTTP.get_response(URI.parse(@url)).body
    doc = REXML::Document.new(data)
    doc.elements.each('feed/entry') { |entry|
      item = { :title => entry.elements['title'].text, 
               :published => Date.parse(entry.elements['published'].text) }
      @list << item
    }
  end

  def list
    @list.each { |item|
      puts "* #{item[:title]} - #{item[:published]}"
    }
  end
  
end

feed = RssFeed.new('http://feeds.feedburner.com/mdk')
feed.fetch
feed.list



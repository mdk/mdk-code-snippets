require 'rubygems'
require 'optiflag'

module Test extend OptiFlagSet
  keyword 'list' 

  and_process!
end

puts "#{ARGV.flags.list?}"

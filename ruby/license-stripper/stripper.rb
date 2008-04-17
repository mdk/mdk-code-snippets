#!/usr/bin/env ruby

if ARGV[0] == nil
  puts "You need to specify a file!"
  exit
end

data = File.read(ARGV[0])
out = File.open(ARGV[0], "w")

stripped = false
stripping = false
first = false
data.each_line { |line|
  
  out.puts line if stripped and first
  first = true
  next if stripped

  # Stripping start
  if line =~ /\/\*/
    stripping = true
    next
  end

  # Stripping stop
  if line =~ /\*\//
    stripping = false
    stripped = true
    first = false
    next
  end
}

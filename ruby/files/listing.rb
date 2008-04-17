dirs = []
files = []

dir_name = ENV['HOME'] 
Dir.open(dir_name).each { |d|

  next if d =~ /^\./

  name = File.join(dir_name, d)
  dirs << d if File.ftype(name) == 'directory'
  files << d if File.ftype(name) == 'file'
}

dirs.each { |dir|
  puts "[#{dir.upcase}]"
}

files.each { |file|
  puts file
}

text = "Blah:11\nKlah:10\nCount:12"

text.each_line { |line|
  match = line.scan(/^Count:(.*)/)
  if not match.empty?
    puts match[0]
  end
}

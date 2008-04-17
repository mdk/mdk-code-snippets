class Storage 
 
  def initialize
    @data = { :bank1 => "MBX", :bank2 => "SGX", :bank3 => "TGX" }
  end

  def [] (key)
    @data[key]
  end

end

bank = Storage.new

puts "Bank 1: #{bank [:bank1]}"
puts "Bank 2: #{bank [:bank2]}"
puts "Bank 3: #{bank [:bank3]}"


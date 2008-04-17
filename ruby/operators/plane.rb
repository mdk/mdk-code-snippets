class Plane

  def initialize
    @destination = nil
  end

  def destination= (dest)
    @destination = dest
    puts "Whizzzzz... plane flying to #{@destination}"
  end
end

plane = Plane.new
plane.destination = "Helsinki"


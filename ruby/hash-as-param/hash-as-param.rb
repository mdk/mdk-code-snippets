def my_func(o)
  color = (o[:color] or "colorless")
  material = (o[:material] or "rubber")
  shape = (o[:shape] or "circle")
  
  puts "Color:#{color} Material:#{material} Shape:#{shape}"
end

my_func :color => 'green', :material => 'wood'
my_func :color => 'white', :shape => 'square'
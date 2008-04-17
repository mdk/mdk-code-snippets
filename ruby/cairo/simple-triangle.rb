require 'cairo'

def draw_triangle(surface)
  cr = Cairo::Context.new(surface)
  cr.set_line_width(15)

  cr.move_to(50, 20)
  cr.line_to(20, 80)
  cr.line_to(80, 80)
  cr.close_path
  cr.stroke
end

surface = Cairo::ImageSurface.new(Cairo::FORMAT_ARGB32, 100, 100)
draw_triangle(surface)
surface.write_to_png('triangle.png')

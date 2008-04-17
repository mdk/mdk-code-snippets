import cairo

class CairoSample:

  def __init__ (self):
    self.surface = cairo.ImageSurface (cairo.FORMAT_ARGB32, 256, 256)
    self.ctx = cairo.Context (self.surface)

  def draw (self):
    self.ctx.set_line_width (15)
    self.ctx.move_to (128, 32)
    self.ctx.line_to (224, 224)
    self.ctx.line_to (32, 224)
    self.ctx.close_path ()
    self.ctx.stroke ()

  def savePng (self, filename):
    """Write image as PNG"""
    self.surface.write_to_png (filename)

  def saveRaw (self, filename):
    """Write image as a RAW file"""
    data = self.surface.get_data ()
    file = open (filename, 'wb')
    file.write (data)
    file.close ()

if __name__ == "__main__":
  sample = CairoSample ()
  sample.draw ()
  sample.savePng ('triangle.png')
  sample.saveRaw ('triangle.raw')


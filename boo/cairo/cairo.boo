import System
import Cairo

class Application:

  _context as Cairo.Context
  _surface as Cairo.Surface

  def constructor ():
    _surface = ImageSurface (Format.ARGB32, 200, 200)
    _context = Context (_surface)

  def Draw ():
    _context.LineWidth = 16
    _context.MoveTo (100, 20)
    _context.LineTo (180, 180)
    _context.LineTo (20, 180)
    _context.ClosePath ()
    _context.Stroke ()

  def Save ():
    _surface.WriteToPng ("test.png")

  def LetLose ():
    _surface = null
    cast (IDisposable, _context).Dispose ()

app = Application ()
app.Draw ()
app.Save ()
app.LetLose ()


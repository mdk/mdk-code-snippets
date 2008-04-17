import System
import Gtk
import Cairo

class CairoWindow (Window):

  _area as DrawingArea

  def constructor ():
    super ("Cairo Window")
    DeleteEvent += OnDeleteEvent
    _area = DrawingArea ()
    _area.ExposeEvent += OnExposeEvent
    Add (_area)

  private def OnDeleteEvent ():
    Application.Quit ()

  private def OnExposeEvent ():
    using cairo = Gdk.CairoHelper.Create (_area.GdkWindow):
      w as int
      h as int
      GetSize (w, h)
      cairo.LineWidth = 5
      cairo.MoveTo (10, 10)
      cairo.LineTo (w - 10, 10)
      cairo.LineTo (10, h - 10)
      cairo.LineTo (w - 10, h - 10)
      cairo.Stroke ()


Application.Init ()
window = CairoWindow ()
window.ShowAll ()
Application.Run ()


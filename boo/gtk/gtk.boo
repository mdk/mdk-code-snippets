import System
import Gtk

class MyWindow(Window):

  def constructor():
    super ("MyWindow")
    DeleteEvent += OnDeleteEvent

  private def OnDeleteEvent():
    Application.Quit ()

Application.Init ()
myWindow = MyWindow ()
myWindow.ShowAll ()
Application.Run ()


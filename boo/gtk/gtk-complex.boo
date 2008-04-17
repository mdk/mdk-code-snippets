import System
import Gtk

class MyCombo (ComboBox):

  def constructor ():
    super (('one.jpg', 'two.jpg', 'three.jpg'))


class MyImage (Image):

  def constructor (filename as string):
    super (filename)


class MyWindow (Window):

  _myCombo as MyCombo
  _myImage as MyImage

  def constructor ():
    super ("MyWindow")

    BorderWidth = 12
    DeleteEvent += onDeleteEvent

    _myCombo = MyCombo ()
    _myCombo.Active = 0
    _myCombo.Changed += onComboChanged

    _myImage = MyImage ('one.jpg')
    
    vbox = VBox (false, 12)
    vbox.Add (_myCombo)
    vbox.Add (_myImage)

    self.Add (vbox)


  private def onDeleteEvent ():
    Application.Quit ()


  private def onComboChanged ():
    _myImage.FromFile = _myCombo.ActiveText


class Program:

    _myWindow as MyWindow

    def constructor ():
        Application.Init ()
        _myWindow = MyWindow ()

    def Run ():
        _myWindow.ShowAll ()
        Application.Run ()


program = Program ()
program.Run ()

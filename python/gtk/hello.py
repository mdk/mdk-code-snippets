import pygtk
import gtk

class HelloWorld:

  def __init__ (self):
    self.window = gtk.Window (gtk.WINDOW_TOPLEVEL)
    self.window.connect ('destroy', self.onDestroy)
    self.window.set_border_width (10)

    self.button = gtk.Button ('Hello World!')
    self.button.connect ('clicked', self.onClicked)

    self.window.add (self.button)
    self.window.show_all ()

  def onDestroy (self, data = None):
    gtk.main_quit()

  def onClicked (self, data = None):
    print 'Clicked!' 

  def main (self):
    gtk.main ()

if __name__ == "__main__":
  hello = HelloWorld ()
  hello.main ()


  


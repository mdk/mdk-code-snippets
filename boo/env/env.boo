import System

class Application:

  _editor
  _username
  _display

  def constructor ():
    _editor = Environment.GetEnvironmentVariable ('EDITOR')
    _username = Environment.GetEnvironmentVariable ('USERNAME')
    _display = Environment.GetEnvironmentVariable ('DISPLAY')
    if not _editor or not _username or not _display:
      raise Exception ('Failed to read all variables!')

  def Present ():
    print "EDITOR:", _editor
    print "USERNAME:", _username
    print "DISPLAY:", _display


app = Application ()
app.Present ()

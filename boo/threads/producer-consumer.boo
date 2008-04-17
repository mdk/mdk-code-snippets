import System
import System.Threading
import System.Collections

class Application:

  _queue = Queue ()
  _locker = Object ()
  _wh = AutoResetEvent (false)
  _worker as Thread
  
  def constructor ():
    _wh = AutoResetEvent (false)
    _worker = Thread (ProcessFunction)
    _worker.Start ()

  def AddItem (item as string):
    lock _locker:
      _queue.Enqueue (item)
      _wh.Set ()

  def WaitForFinish ():
    _worker.Join ()

  private def ProcessFunction ():
    while (true):
      task = ""
      lock _locker:
        task = _queue.Dequeue () if _queue.Count > 0

      if task == null:
        return
      elif task != "":
        print task.ToUpper ()
      else:
        _wh.WaitOne ()


app = Application ()

app.AddItem ('dog')
app.AddItem ('cat')
app.AddItem ('man')
app.AddItem (null)

app.WaitForFinish ()

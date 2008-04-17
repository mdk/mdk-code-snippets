import System

class Test:

  _my_array
  _my_list

  def constructor ():
    _my_array = ('blah1', 'blah2', 'blah3')
    _my_list = ['blah1', 'blah2', 'blah3']
  
  def Run ():
    for item in _my_array:
      print item

    for item in _my_list:
      print item

application = Test ()
application.Run ()


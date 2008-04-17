import pynotify

pynotify.init ('Test')
nw = pynotify.Notification ('Title', 'Here I go!')
nw.set_timeout (5000)
nw.show ()

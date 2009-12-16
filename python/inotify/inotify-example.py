from pyinotify import *

class ChangeHandler(ProcessEvent):
    def process_IN_CREATE(self, event):
        print "Create even occured!"

wm = WatchManager()
tn = ThreadedNotifier(wm, ChangeHandler())
wm.add_watch('./', EventsCodes.ALL_FLAGS['IN_CREATE'], rec = True)
tn.loop()
tn.stop()


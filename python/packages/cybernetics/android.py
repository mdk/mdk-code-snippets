from robot import *

class Android (Robot):

    def __init__ (self, name, skill):
        Robot.__init__ (self, name)

    def humanize (self):
        print "%s becoming human..." % self.name

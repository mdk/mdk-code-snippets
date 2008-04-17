import os
import re

for filename in os.listdir (os.getcwd ()):
    file = open (filename, 'r')
    for line in file:
        if re.compile (r"^Monster").match (line):
            print "Monster is hidden in %s" % filename
    file.close ()


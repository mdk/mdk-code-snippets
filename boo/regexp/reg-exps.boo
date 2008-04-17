import System.IO

using file = File.OpenText ("text.txt"):
  while s = file.ReadLine ():
    for m in /dog\w*/.Matches (s):
      print m


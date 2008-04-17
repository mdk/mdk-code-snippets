import System.IO

using file = File.OpenText ("test.txt"):
  while s = file.ReadLine ():
    print s if s =~ /another/


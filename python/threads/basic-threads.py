#!/usr/bin/env python
import threading

class Worker(threading.Thread):
  def __init__(self, n):
    """Constructor. Takes the name of the worker as argument."""
    threading.Thread.__init__(self)
    self.name = n;
  
  def run(self):
    """The thread entry point."""
    for i in range(20):
      print "Worker %s: %d" % (self.name, i)
      
if __name__ == "__main__":
  th1 = Worker("1");
  th2 = Worker("2");
  
  th1.start();
  th2.start();
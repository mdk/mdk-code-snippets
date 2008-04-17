class MyRobot:

  def __init__ (self, name):
    self.name = name
    self.energy = 100
    
  def present (self):
    print "My name is %s" % self.name
    self.energy -= 1

  # Commented out so we can have some tests failing
  #def get_energy (self):
  #  return self.energy



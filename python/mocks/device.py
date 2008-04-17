class Device:

  def __init__ (self, voltage):
    self.voltage = voltage
    self.charger = None

  def plugCharger (self, charger):
    if charger.voltage != self.voltage:
      raise Exception, "Charger not compatible with device!"
    self.charger = charger

  def chargeUp (self):
    if self.charger != None:
      raise Exception, "Charger not plugged!"
    
    if self.charger.giveEnergy () != self.voltage:
      raise Exception, "BZZZ!!! Lights go down, bad voltage..."



import unittest
from charger import *

class TestCharger (unittest.TestCase):

  def testCreation (self):
    self.assertNotEqual (Charger (110), None)
    self.assertNotEqual (Charger (220), None)
    self.assertNotEqual (Charger (9), None)

  def testVoltage (self):
    charger = Charger (220)
    self.assertEqual (220, charger.voltage)

  def testGiveVoltage (self):
    charger = Charger (220)
    self.assertEqual (220, charger.giveEnergy ())
    
if __name__ == '__main__':
  unittest.main()



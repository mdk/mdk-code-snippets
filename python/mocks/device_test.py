import unittest
from device import *
from charger import *
from mock import Mock 

class TestDevice (unittest.TestCase):

  def testCreation (self):
    self.assertNotEqual (Device (110), None)
    self.assertNotEqual (Device (220), None)
    self.assertNotEqual (Device (9), None)

  def testVoltage (self):
    device = Device (220)
    self.assertEqual (220, device.voltage)

  def testPluggingIncompatibleCharger (self):
    device = Device (220)
    chargerMock = Mock (Charger)
    chargerMock.voltage = 110
    self.failUnlessRaises (Exception, lambda: device.plugCharger (chargerMock))

  def testPluggingCompatibleCharger (self):
    device = Device (220)
    chargerMock = Mock (Charger)
    chargerMock.voltage = 220
    device.plugCharger (chargerMock)

  def testChargingFromBrokenCharger (self):
    device = Device (220)
    chargerMock = Mock ({"giveEnergy" : 110})
    chargerMock.voltage = 220
    device.plugCharger (chargerMock)
    self.failUnlessRaises (Exception, lambda: device.chargeUp())

  def testChargingFromOkCharger (self):
    device = Device (220)
    chargerMock = Mock ({"giveEnergy" : 220})
    chargerMock.voltage = 220
    device.plugCharger (chargerMock)
    device.chargeUp ()

if __name__ == '__main__':
  unittest.main()



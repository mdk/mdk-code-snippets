import NUnit.Framework
import NUnit.Mocks

[TestFixture]
class DeviceTest:

  _device as Device

  [SetUp]
  def Initialize ():
    _device = Device ()

  [Test]
  def InitialChargerTest ():
    Assert.AreEqual (null, _device.Charger)

  [Test]
  def PlugChargerTest ():
    mockCharger as ICharger = DynamicMock (ICharger)
    _device.PlugCharger (cast (ICharger, mockCharger))

  [Test]
  def MainChargerTest ():
    mockCharger = DynamicMock (ICharger)
    mockCharger.ExpectAndReturn ("GetPower", "!!!")
   
    _device.PlugCharger (mockCharger as ICharger)
    _device.LoadUp ()
    mockCharger.Verify ()


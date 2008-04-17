import NUnit.Framework

class Dog:

  [Property (Name)]
  _name as string

  def constructor(name as string):
    _name = name


[TestFixture]
class DogTest:

  [Test]
  def NameTest ():
    dog = Dog ('bobby')
    Assert.AreEqual (dog.Name, 'bobby')
    Assert.AreEqual (dog.Name, 'bajtek')




import Newtonsoft.Json

class Dog:

  [Property (Name)]
  _name as string

  [Property (Age)]
  _age as int
 
  [Property (Nicks)]
  _nicks = []

  def constructor (name, age):
    _name = name
    _age = age

  def AddNick (nick):
    _nicks.Add (nick)

dog = Dog ('Walt', 9)
dog.AddNick ('Walty')
dog.AddNick ('Waof')
dog.AddNick ('Wall')

print JavaScriptConvert.SerializeObject (dog)

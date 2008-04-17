import System

class Device:

  [Getter (Charger)]
  _charger as ICharger
  
  def PlugCharger (charger as ICharger):
    raise Exception ("Charger already attached") if _charger != null
    raise Exception ("Can't connect null charger") if charger == null
    _charger = charger

  def LoadUp ():
    raise Exception ("No charger attached") if _charger == null
    power = _charger.GetPower ()
    raise Exception ("Bad power!") if power != "!!!"


import System

class LightHouse:

  [Property (Lighted)]
  _lighted = false

  event LightUp as EventHandler
  event LightDown as EventHandler
  
  def TurnOn ():
    if _lighted == false:
      _lighted = true
      LightUp (self, null)

  def TurnOff ():
    if _lighted == true:
      _lighted = false
      LightDown (self, null)

lh = LightHouse ()

lh.LightUp += { print "Light up!" }
lh.LightDown += { print "Light down!" }

lh.TurnOn ()
lh.TurnOff ()


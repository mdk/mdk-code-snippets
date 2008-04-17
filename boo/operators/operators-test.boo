import System

interface IAnimator:

  Value as single:
    get


class TwinAnimator (IAnimator):

  Value as single:
    get:
      return (_a.Value + _b.Value) / 2.0

  _a as IAnimator
  _b as IAnimator

  def constructor (a, b):
    _a = a
    _b = b


class Animator (IAnimator):
  
  [Property (Value)]
  _value as single
  
  _wrapped as IAnimator

  def constructor (v):
    _value = v

  static def op_Addition (a as IAnimator, b as IAnimator):
    return b if a == null
    return a if b == null
    return TwinAnimator (a, b)


class Target:

  [Property (Position)]
  _position as IAnimator

  def ToString ():
    print _position.Value
    

t = Target ()
t.Position += Animator (0.5)
print t
t.Position += Animator (1.0)
print t
  

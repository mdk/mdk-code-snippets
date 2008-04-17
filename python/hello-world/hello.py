class Dog:

  def __init__ (self, one, two):
    self.one = one
    self.two = two

  def show (self):
    print 'Dog here:'
    print self.one
    print self.two

a = (1, 2, 3, 4, 5)
b = [1, 2, 3, 4, 5]
c = { "a" : 1, "b" : 2 }

def hello():
  print "Hello world!"

print a [0]
print b [0]
print c ['a']

for item in a:
  print item

dog = Dog('blah', 'bleh')
dog.show()



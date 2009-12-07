from storm.locals import *

class Person(object):
  __storm_table__ = "person"
  id = Int(primary=True)
  name = Unicode()
  
database = create_database("sqlite:")
store = Store(database)
store.execute("CREATE TABLE person (id INTEGER PRIMARY KEY, name VARCHAR)")

joe = Person()
store.add(joe)
store.flush()

joe.name = u"Joe Johnes"
print "%s, %s" % (joe.id, joe.name)

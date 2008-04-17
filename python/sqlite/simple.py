from pysqlite2 import dbapi2 as sqlite

class HelloSqlLite:

    def __init__ (self):
        """Create a new application object"""
        self.connection = sqlite.connect (':memory:') # 'test.db' to connect to file
        self.cursor = self.connection.cursor ()
        self.__createTables ()
        self.__createData ()

    def __createTables (self):
        """Create the internal table structure"""
        self.cursor.execute ('CREATE TABLE products ('
                             'id INTEGER PRIMARY KEY,'
                             'name VARCHAR (50),'
                             'category INTEGER)')
        self.cursor.execute ('CREATE TABLE categories ('
                             'id INTEGER PRIMARY KEY,'
                             'name VARCHAR (50))')

    def __addCategory (self, name):
        """Adds a new category to the database"""
        self.cursor.execute ('INSERT INTO categories VALUES '
                             '(null, ?)', (name,))
        self.connection.commit ()

    def __addProduct (self, name, category):
        """Adds a new product into the database"""
        self.cursor.execute ('INSERT INTO products VALUES '
                             '(null, ?, ?)', (name, category))
        self.connection.commit ()
 
    def __createData (self):
        """Fill the database with sample data"""
        self.__addCategory ('food')
        self.__addCategory ('cleaning')
        self.__addProduct ('ketchup', 1)
        self.__addProduct ('toothpaste', 2)
        self.__addProduct ('brush', 2)

    def showProducts (self):
        """List all the products in the database"""
        print 'PRODUCTS:'
        self.cursor.execute ('SELECT products.id,products.name,categories.name '
                             'FROM products,categories '
                             'WHERE products.category = categories.id')
        for product in self.cursor:
            print '%.3d - %s [%s]' % (product [0], product [1], product [2])
        print

if __name__ == "__main__":
    hello = HelloSqlLite ()
    hello.showProducts ()


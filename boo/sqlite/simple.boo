import System
import System.Data
import Mono.Data.SqliteClient;

class Database:

  _dbcon as SqliteConnection

  def constructor ():
    _dbcon = SqliteConnection ("URI=file::memory:")
    _dbcon.Open ()
    createTables ()
    insertData ()

  def ListDogs ():
    cmd = _dbcon.CreateCommand ()
    cmd.CommandText = "SELECT * FROM dogs"
    reader = cmd.ExecuteReader ()

    while (reader.Read ()):
      print "*", reader [1]

  private def createTables ():
    cmd = _dbcon.CreateCommand ()
    cmd.CommandText = "CREATE TABLE dogs (id INTEGER PRIMARY KEY, name VARCHAR(50))"
    cmd.ExecuteNonQuery ()

  private def addDog (name):
    cmd = _dbcon.CreateCommand ()
    cmd.CommandText = "INSERT INTO dogs VALUES (null,\"" + name + "\")"
    cmd.ExecuteNonQuery ()

  private def insertData ():
    addDog ('Walt')
    addDog ('Mike')
    addDog ('Quilker')

db = Database ()
db.ListDogs ()


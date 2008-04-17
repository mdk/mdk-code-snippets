import System
import System.IO
import System.Net
import System.Xml

class RssFeed:

  _url as string
  _list = []

  def constructor (url as string):
    _url = url

  def fetch ():
    request  = WebRequest.Create (_url)
    stream = request.GetResponse ().GetResponseStream ()
    reader = XmlTextReader (stream)

    while reader.Read ():
      if reader.NodeType == XmlNodeType.Element and reader.LocalName == 'item':
        while reader.Read ():
          _list.Add (reader.ReadString ()) if reader.LocalName == 'title'

  def list ():
    for item in _list:
      print "*", item

print "Listing feed items from http://jstamant.com :\n"
feed = RssFeed ('http://jstamant.com/feed')
feed.fetch ()
feed.list ()


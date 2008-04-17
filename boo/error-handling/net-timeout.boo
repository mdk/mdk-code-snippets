import System
import System.IO
import System.Net
import System.Xml

class WebAccessException (Exception):

  def constructor (url as string, e as Exception):
    str = "Cannot access " + url
    super (str, e)


class WebReader:

  static _fakeUrl = "http://www.trans-carbon-ele.com"

  def FireUp ():
    try:
      request = WebRequest.Create (_fakeUrl)
      stream = request.GetResponse ().GetResponseStream ()
      reader = XmlTextReader (stream)
      
      while reader.Read ():
        print reader.NodeType

    except e as Exception:
      raise WebAccessException (_fakeUrl, e)

    ensure:
      print "Closing resources..."


web = WebReader ()
web.FireUp ()

import System
import FlickrNet

class Application:

  _flickr as Flickr

  def constructor (api_key, secret):
    _flickr = Flickr (api_key, secret)

  def ListNovellPhotos ():
    opts = PhotoSearchOptions ()
    opts.Tags = 'novell'
    print "Photos tagged with novell:"
    for photo in _flickr.PhotosSearch (opts).PhotoCollection:
      print "*", photo.Title

  def Authenticate ():
    frob = _flickr.AuthGetFrob ()
    print "Go to:", _flickr.AuthCalcUrl (frob, AuthLevel.Read)
    Console.ReadLine ()
    _flickr.AuthToken = _flickr.AuthGetToken (frob).Token
    print "Authenticated with token", _flickr.AuthToken

app = Application ('346e3a9b94fb2195c2f9288534fb9864', '1758b49cce06594d')
app.ListNovellPhotos ()
app.Authenticate ()

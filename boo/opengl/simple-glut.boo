import System
import Tao.FreeGlut
import Tao.OpenGl

class Application:

  def constructor ():
    Glut.glutInit ()
    Glut.glutInitDisplayMode (Glut.GLUT_DOUBLE | Glut.GLUT_RGB)
    Glut.glutInitWindowSize (640, 480)
    Glut.glutCreateWindow ("Boo sample")
    Glut.glutDisplayFunc (onDisplay)
    initViewport ()

  def Run ():
    Glut.glutMainLoop ()

  private def onDisplay ():
    Gl.glClear (Gl.GL_COLOR_BUFFER_BIT)
    Gl.glBegin (Gl.GL_QUADS)
    Gl.glVertex2f (-100.0, -100.0)
    Gl.glVertex2f (100.0, -100.0)
    Gl.glVertex2f (100.0, 100.0)
    Gl.glVertex2f (-100.0, 100.0)
    Gl.glEnd ()

    Glut.glutSwapBuffers ()

  private def initViewport ():
    Gl.glMatrixMode (Gl.GL_PROJECTION)
    Gl.glLoadIdentity ()
    Gl.glOrtho (-320, 320, 240, -240, -1000.0, 1000.0)

app = Application ()
app.Run ()

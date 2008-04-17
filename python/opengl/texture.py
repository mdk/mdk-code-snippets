from OpenGL.GL import *
from OpenGL.GLUT import *
import sys

def load_texture(filename):
  file = open (filename, 'r')
  data = file.read ()

  glEnable(GL_TEXTURE_2D)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, 256, 256, 0, GL_RGB, GL_UNSIGNED_BYTE, data)

def on_display():
  glClear(GL_COLOR_BUFFER_BIT)

  # draw quad
  glBegin(GL_QUADS)
  glTexCoord2f(0, 0)
  glVertex2f(-100, -100)

  glTexCoord2f(1, 0)
  glVertex2f(100, -100)
  
  glTexCoord2f(1, 1)
  glVertex2f(100, 100)
 
  glTexCoord2f(0, 1)
  glVertex2f(-100, 100)
  glEnd()

  glutSwapBuffers()

def on_keyboard(key, x, y):
  print key

# initialize glut
glutInit(sys.argv)

# create a window
glutInitWindowSize(640, 480)
glutCreateWindow('foo')

# projection settings
glMatrixMode (GL_PROJECTION);
glLoadIdentity ();
glOrtho (-320, 320, 240, -240, -1000.0, 1000.0);

# callbacks
glutDisplayFunc(on_display)

# texture
load_texture('texture.raw')

# main loop
glutMainLoop()



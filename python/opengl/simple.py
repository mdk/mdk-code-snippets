from OpenGL.GL import *
from OpenGL.GLUT import *
import sys

def on_display():
  glClear(GL_COLOR_BUFFER_BIT)

  # draw quad
  glBegin(GL_QUADS)
  glVertex2f(-100, -100)
  glVertex2f(100, -100)
  glVertex2f(100, 100)
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
glutKeyboardFunc(on_keyboard)

# main loop
glutMainLoop()



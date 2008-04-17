from OpenGL.GL import *
from OpenGL.GLUT import *
import sys
import cairo
import time

t = 1.0

def create_texture():
  surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, 256, 64)
  ctx = cairo.Context(surface)
  ctx.set_source_rgb(1.0, 1.0, 1.0)

  ctx.set_line_width(3)
  ctx.move_to(0, 0)
  ctx.line_to(255, 64)
  ctx.stroke()

  ctx.move_to(0, 64)
  ctx.line_to(255, 0)
  ctx.stroke()

  data = surface.get_data()

  glEnable(GL_TEXTURE_2D)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 256, 64, 0, GL_RGBA, GL_UNSIGNED_BYTE, data)

def on_display():
  global t;

  glClear(GL_COLOR_BUFFER_BIT)

  glPushMatrix()
  glScalef(t, t, 0)

  glBegin(GL_QUADS)
  glTexCoord2f(0, 0)
  glVertex2f(-128, -32)

  glTexCoord2f(1, 0)
  glVertex2f(128, -32)
  
  glTexCoord2f(1, 1)
  glVertex2f(128, 32)
 
  glTexCoord2f(0, 1)
  glVertex2f(-128, 32)
  glEnd()

  glPopMatrix()

  glutSwapBuffers()
  time.sleep(1 / 25.0)

def on_keyboard(key, x, y):
  print key

def on_idle():
  global t
  t += 0.01
  glutPostRedisplay()

# initialize glut
glutInit(sys.argv)

# create a window
glutInitWindowSize(640, 480)
glutCreateWindow('foo')

# projection settings
glMatrixMode(GL_PROJECTION);
glLoadIdentity();
glOrtho(-320, 320, 240, -240, -1000.0, 1000.0);
glMatrixMode(GL_MODELVIEW)

create_texture()

# callbacks
glutDisplayFunc(on_display)
glutIdleFunc(on_idle)

# main loop
glutMainLoop()



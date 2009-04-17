#include <stdlib.h>
#include <GL/gl.h>
#include <GL/glut.h>

int windowHandle;

static void render(void)
{
    glClear(GL_COLOR_BUFFER_BIT);

    int i;
    for (i = 0; i < 10; i++) {
        glColor3f(i * 0.1, 0.0, 0.0);
        glBegin(GL_QUADS);
        glVertex2f(i * 10.0, i * 10.0);
        glVertex2f(320 - (i * 10.0), i * 10.0);
        glVertex2f(320 - (i * 10.0), 240 - (i * 10.0));
        glVertex2f(i * 10.0, 240 - (i * 10.0));
        glEnd();
    }

    glutSwapBuffers();
}

static void key(unsigned char key, int x, int y)
{
    glutDestroyWindow(windowHandle);
    exit(0);
}

int main (int argc, char **argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE);
    glutInitWindowSize(320, 240);

    windowHandle = glutCreateWindow(argv[0]);
    glutDisplayFunc(render);
    glutKeyboardFunc(key);

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, 320, 240, 0, -1000.0, 1000.0);

    glutMainLoop();
    return 0; 
}

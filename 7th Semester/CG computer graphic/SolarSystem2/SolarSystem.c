#include <GL/glut.h>

static int year = 0, day = 0;

void init(void)
{
   glClearColor(0.0, 0.0, 0.0, 0.0);
   glShadeModel(GL_FLAT);
}

void glutTimer(int value)
{
   glutPostRedisplay();
   glutTimerFunc(25, glutTimer, 1);
}

void display(void)
{
   glClear(GL_COLOR_BUFFER_BIT);
   glColor3f(1.0, 1.0, 0.0);
   year = (year - 1) % 360;
   day = (day - 3) % 360;

   glPushMatrix();
   glColor3f(1.0, 0.8, 0.0);
   glutWireSphere(1.0, 20, 16);   /* Desenhar o sol*/
   glRotatef((GLfloat)year, 0.0, 1.0, 0.0);

   glTranslatef(4.0, 0.0, 0.0);
   glRotatef((GLfloat)day, 0.0, 1.0, 0.0);
   glColor3f(1.0, 0.5, 0.0);
   glutWireSphere(0.2, 10, 8);    /* Desenhar a terra */
   glTranslatef(1.0, 0.0, 0.0);
   glRotatef((GLfloat)year*0.5, 0.0, 1.0, 0.0);
   //ajusta cor para cinza (lua)
   glColor3f(0.5, 0.5, 0.5);
   //glutPostRedisplay();
   glutWireSphere(0.12, 10, 8);
   //glTranslatef (5.0, 0.0, 0.0);

   glPopMatrix();
   glutSwapBuffers();

}

void reshape(int w, int h)
{
   glViewport(0, 0, (GLsizei)w, (GLsizei)h);
   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluPerspective(60.0, (GLfloat)w / (GLfloat)h, 1.0, 20.0);
   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();
   gluLookAt(0.0, 5.0, 15.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
}


int main(int argc, char** argv)
{
   glutInit(&argc, argv);
   glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
   glutInitWindowSize(500, 500);
   glutInitWindowPosition(100, 100);
   glutCreateWindow(argv[0]);
   init();
   glutDisplayFunc(display);
   glutTimerFunc(200, glutTimer, 1);
   //glutTimerFunc(1, glutTimer, 1);
   //glutTimerFunc((1000 / 33), display, 10);
   glutReshapeFunc(reshape);
   glutMainLoop();
   return 0;
}

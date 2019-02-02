#include <GL/glut.h>

#define REFRESHTIME 33
static int year = 0, day = 0;
GLfloat light_diffuse[] ={ 0, 0.0, 0.0, 0 };
GLfloat light_position[] ={ 0, 1, 1, 0 };

GLfloat sunColor[] =
{ 255, 255, 0 }, earthColor[] =
{0,255,175 }, saturnColor[] =
{ 125, 125, 125 }, venusColor[] =
{ 255, 0, 255 },moonColor[] =
{ 255, 255, 255 };
GLfloat sunColorDiffuse[] =
{ 0.5, 0.25, 0, 0.5 }, earthColorDiffuse[] =
{ 0, 0.5, 0.1, 1.0};
void init(void)
{
	glClearColor(0.0, 0.0, 0.0, 0.0);
	
	glMaterialfv(GL_FRONT, GL_AMBIENT, sunColor);
	glMaterialfv(GL_FRONT, GL_DIFFUSE, sunColor);
	glMaterialfv(GL_FRONT, GL_SPECULAR, sunColor);

	glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, light_position);

	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	glEnable(GL_DEPTH_TEST);
	glMatrixMode(GL_PROJECTION);
}

void glutTimer(int value)
{
	glutPostRedisplay();
	glutTimerFunc(REFRESHTIME, glutTimer, 1);
}

void changeMaterialColor(GLfloat * planetColor)
{
	glEnable(GL_COLOR_MATERIAL);
	glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
	glColor4f(planetColor[0] / 255.0, planetColor[1] / 255.0, planetColor[2] / 255.0, 1.0);
	glColorMaterial(GL_FRONT, GL_SPECULAR);
	glColor4f(planetColor[0] * 1.2 / 255.0, planetColor[1] * 1.2 / 255.0, planetColor[2] * 1.2 / 255.0, 1.0);
	float mat_specular[] = { 0.992157, 0.2, 0.807843, 1.0 };
	float shininess = 10;

	glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
	glMaterialf(GL_FRONT, GL_SHININESS, shininess);
	glDisable(GL_COLOR_MATERIAL);
}

void createPlanet(float size, float distance, float Tvelocity, float Rvelocity, int moons, GLfloat * planetColor)
{
	glPushMatrix();
	glRotatef(year*Tvelocity, 0.0, 1.0, 0.0);
	glTranslatef(distance, 0.0, 0.0);
	changeMaterialColor(planetColor);
	glRotatef((GLfloat)Rvelocity, 0.0, 1.0, 0.0);
	glutSolidSphere(size, 40, 40);    /* Desenhar a terra */

	if (moons > 0)
	{
		for (int i = 0; i < moons; i++)
		{
			glPushMatrix();
			glRotatef(year*(i+1)+i*100, 0.0, 1.0, 1.0);
			glTranslatef(size + size*0.3*1.2, 0.0, 0.0);
			changeMaterialColor(moonColor);
			glRotatef((GLfloat)Rvelocity, 0.0, 1.0, 0.0);
			glutSolidSphere(size*0.2, 40, 40);
			glPopMatrix();
			//createPlanet(size*0.3, size + size*0.3*1.2, Tvelocity, Rvelocity, 0, moonColor);
		}
	}
	glPopMatrix();
}

void
material(int dlist, GLfloat* ambient)
{
	glNewList(dlist, GL_COMPILE);
	glMaterialfv(GL_FRONT, GL_AMBIENT, ambient);
	glMaterialfv(GL_FRONT, GL_DIFFUSE, ambient);
	glMaterialfv(GL_FRONT, GL_SPECULAR, ambient);
	glEndList();
}

void display(void)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);

	year = (year - 1) % 360;
	day = (day - 3) % 360;

	glPushMatrix();
	changeMaterialColor(sunColor);
	glRotatef(1, 0.0, 1.0, 0.0);
	glutSolidSphere(4.0, 20, 20);   /* Desenhar o sol*/
	glPopMatrix();

	createPlanet(2, 10,1,1,0, earthColor);
	createPlanet(3, 20, 2, 2,2, saturnColor);
	createPlanet(5, 40, 3, 10, 4, venusColor);
	glPopMatrix();
	glutSwapBuffers();

}

void reshape(int w, int h)
{
	glMatrixMode(GL_PROJECTION); 
	glLoadIdentity(); 
	gluPerspective(50.0, 1.0, 1.0, 200); 
	glMatrixMode(GL_MODELVIEW); 
	glLoadIdentity(); 
	gluLookAt(0, 25, -100, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
}

int main(int argc, char** argv)
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH);
	glutInitWindowSize(500, 500);
	glutInitWindowPosition(100, 100);
	glutCreateWindow(argv[0]);
	
	init();

	//CALLBACK SETERS =================================================================================================================================
	glutDisplayFunc(display);
	glutTimerFunc(REFRESHTIME, glutTimer, 1);
	glutReshapeFunc(reshape);
	
	glutMainLoop();
	return 0;
}
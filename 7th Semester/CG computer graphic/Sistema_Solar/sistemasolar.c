
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>

GLuint esfera;


int vista_cima = 0;
static GLfloat year = 0, day = 0;
int distTerra = 50, lookAt1 = 100, lookAt2 = 100, lookAt3 = 100, pos1 = 0, pos2 = 0;

void Rotate()
{
	day += 2;
	if(day > 360)
		day = day - 360;
	year += .1;
	glutPostRedisplay();
}
static void init(void)
{ 
	GLfloat luzAmbiente[4]={0.2,0.2,0.2,1.0}; 
	GLfloat luzDifusa[4]={0.7,0.7,0.7,1.0};	   // "cor" 
	GLfloat luzEspecular[4]={0.7, 0.7, 0.7, 1.0};// "brilho" 
	GLfloat posicaoLuz[4]={-10.0, 0.0, 0.0, 1.0};

	// Capacidade de brilho do material
	GLfloat especularidade[4]={1,1,1,1.0}; 
	GLint especMaterial = 1;

 	// Especifica que a cor de fundo da janela será preta
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	
	// Habilita o modelo de colorização de Gouraud
	glShadeModel(GL_SMOOTH);

	// Define a refletância do material 
	glMaterialfv(GL_FRONT,GL_SPECULAR, especularidade);
	// Define a concentração do brilho
	glMateriali(GL_FRONT,GL_SHININESS,especMaterial);

	// Ativa o uso da luz ambiente 
	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, luzAmbiente);

	// Define os parâmetros da luz de número 0
	glLightfv(GL_LIGHT0, GL_AMBIENT, luzAmbiente); 
	glLightfv(GL_LIGHT0, GL_DIFFUSE, luzDifusa );
	glLightfv(GL_LIGHT0, GL_SPECULAR, luzEspecular );
	glLightfv(GL_LIGHT0, GL_POSITION, posicaoLuz );

	// Habilita a definição da cor do material a partir da cor corrente
	glEnable(GL_COLOR_MATERIAL);
	//Habilita o uso de iluminação
	glEnable(GL_LIGHTING);  
	// Habilita a luz de número 0
	glEnable(GL_LIGHT0);
	// Habilita o depth-buffering
	glEnable(GL_DEPTH_TEST);

  
       
        
 /* Listas de Exibição*/ 
 esfera = glGenLists (10); 
 glNewList(esfera, GL_COMPILE);
    glutSolidSphere(1.0, 30, 30);    
 glEndList(); // finaliza a lista
 

}


void desenhaTerraLua(float rCor, float gCor, float bCor, float diametro, int rotate, float translate){
 /*Terra e Lua*/
 /* Armazena a situação atual da pilha de matrizes */
 glPushMatrix();         
    /*Terra*/
    glColor4f (0.06, 0.18, 0.81, 1.0); // cor da Terra
    glScalef(diametro,diametro,diametro);  
    /*funções responsáveis pelo movimento de translação e rotação da terra*/
    glRotatef ((GLfloat) year/rotate, 0.0, 1.0, 0.0);
    glTranslatef(translate,0.0,0.0);
    glRotatef ((GLfloat) day, 0.0, 1.0, 0.0);
    /*Chama a lista onde a esfera se encontra*/     
    glCallList(esfera); //Terra
    
    /*Lua*/
    glColor4f (0.81, 0.78, 0.79, 1.0); // cor da Lua
    glScalef(0.5,0.5,0.5);  
    /*funções responsáveis pelo movimento de translação da lua em torno da terra*/
    glRotatef((GLfloat) day,0.0,1.0,0.0);
    glTranslatef(4.0,0.0,0.0);
    
    /*Chama a lista onde a esfera se encontra*/		
	glCallList(esfera);//lua
    
 /*Descarrega a pilha de matrizes até o último glPushMatrix */     
 glPopMatrix();
}

void desenhaPlaneta(float rCor, float gCor, float bCor, float diametro, float rotate, float translate){
 /*Planeta*/
 
 /* Armazena a situação atual da pilha de matrizes */
 glPushMatrix();         
    /*Marte*/
    glColor4f (rCor, gCor, bCor, 1.0); // cor de Planeta
    glScalef(diametro,diametro,diametro);  
    /*funções responsáveis pelo movimento de translação de Planeta*/
    glRotatef ((GLfloat) year/rotate, 0.0, 1.0, 0.0);
    glTranslatef(translate,0.0,0.0);
    /*Chama a lista onde a esfera se encontra*/     
    glCallList(esfera); //Planeta
 glPopMatrix();
}



/*
  Função responsável pelo desenho das esferas.
  Nesta função também serão aplicadas as tranformações
  necessárias para o efeito desejado. 
*/
void desenha(void)
{ 
   
 glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

 glMatrixMode(GL_MODELVIEW);
 glLoadIdentity();
 gluLookAt(lookAt3,lookAt2,lookAt1, pos1,pos2,0, 0,1,0); 


Rotate();


/* Sol */ 
desenhaPlaneta(1, 1, 0, 5, 99999, 0.1); 
 
/* Mercurio */ 
desenhaPlaneta(0, 1, 0, 0.38, 0.23, distTerra*0.38);

/* Venus */ 
desenhaPlaneta(1, 0.5, 0.3, 0.94, 0.62, distTerra*0.72);

/* Terra */
desenhaTerraLua(0.06, 0.18, 0.81, 1, 1, distTerra);

/* Marte */ 
desenhaPlaneta(1, 0, 0, 0.53, 1.88, distTerra*1.1);

/* Jupter */
desenhaPlaneta(0.5, 0.5, 0.5, 5.2, 0.8, distTerra*0.25);

/* Saturno */ 
desenhaPlaneta(0, 1, 1, 4, 0.65, distTerra*0.5); 
 
/* Urano */ 
desenhaPlaneta(1, 0, 1, 2, 0.45, distTerra*1.4); 
 
/* Netuno */ 
desenhaPlaneta(0, 1, 0, 2, 0.35, distTerra*1.6); 
 
/* Plutao */ 
desenhaPlaneta(1, 1, 1, 0.2, 0.30, distTerra*20); 
 
 glDrawBuffer(GL_BACK);/*desenha o buffer de tras*/
 glutSwapBuffers(); /*troca os buffers*/
 // DefineLuzDIFUSA();
 glutPostRedisplay(); 
  
}

/*
   A função reshape é responsável pelo desenho da tela. Aqui serão determinados 
   o tipo de Projeção (neste caso foi utilizada a projeção perspectiva), 
   o modelo de Matrizes e a posição da câmera.
   Quando a tela é redimensionada os valores da visão perspectiva são 
   recalculados com base no novo tamanho da tela assim como o Viewport
*/  
void reshape(int w, int h)
{
 glViewport(0, 0, (GLsizei) w, (GLsizei) h);
 glMatrixMode(GL_PROJECTION);
 glLoadIdentity();
 gluPerspective(45, (GLfloat) w/(GLfloat) h, 1.0, 10000.0);
}

void especiais(int key, int x, int y) {
     if (key == GLUT_KEY_UP){
        lookAt1 += 5;
        glutPostRedisplay();
     } else if (key == GLUT_KEY_DOWN) {
        lookAt1 -= 5;
        glutPostRedisplay();
     } else if (key == GLUT_KEY_LEFT) {
        lookAt2 += 5;
        glutPostRedisplay();
     } else if (key == GLUT_KEY_RIGHT) {
        lookAt2 -= 5;
        glutPostRedisplay();
     } else if (key == GLUT_KEY_PAGE_UP) {
        lookAt3 += 5;        glutPostRedisplay();
     } else if (key == GLUT_KEY_PAGE_DOWN) {
        lookAt3 += 5;
        glutPostRedisplay();
     } 
     
}


void keyboard(unsigned char key, int x, int y){
  switch (key) {
  case 27:        // Quando a tecla Esc for pressionada, encerra o programa
	exit(0);
	break;
  case 97:       
    pos1 = pos1 - 5;
    glutPostRedisplay();    
    break;
  case 100:      
    pos1 = pos1 + 5;
    glutPostRedisplay();     
    break;    
  
  case 119:      
    pos2 = pos2 + 5;
    glutPostRedisplay();    
    break;
  case 115:      
    pos2 = pos2 - 5;
    glutPostRedisplay();     
    break;    
  case 114:
    pos1 = 0;
    pos2 = 0;
    lookAt1 = 100;
    lookAt2 = 0;    
    lookAt3 = 0;    
    glutPostRedisplay();     
    break;    
  case 82:
    pos1 = 0;
    pos2 = 0;
    lookAt1 = 100;
    lookAt2 = 100;    
    lookAt3 = 100;    
    glutPostRedisplay();     
    break;    
  }
}

/*função principal*/
int main(int argc, char *argv[])
{
     glutInit(&argc, argv);
 glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH  );
 glutInitWindowSize(625, 625);
 glutInitWindowPosition (0, 0);
 glutCreateWindow("Sistema");
 glutDisplayFunc(desenha);
 glutReshapeFunc(reshape);
 init(); 
 // Especifica para a OpenGL que funcao deve ser chamada para geracao da imagem
 glutDisplayFunc(desenha); 
 // Especifica para a OpenGL que funcao deve ser chamada para redimensionamento da janela
 glutReshapeFunc(reshape);
 // Especifica a funcao que vai tratar teclas comuns  
 glutKeyboardFunc(keyboard);
 // Dispara a "maquina de estados" de OpenGL 
 glutSpecialFunc(especiais);
 glutMainLoop(); 
}
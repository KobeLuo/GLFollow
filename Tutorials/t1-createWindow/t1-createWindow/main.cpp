//
//  main.c
//  t1-createWindow
//
//  Created by KobeLuo on 10/07/2017.
//  Copyright © 2017 KobeLuo. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//#include <GLEW/glew.h>
//#include <GLFW/glfw3.h>

//#include <GLAD/glad.h>

//#include <OpenGL/OpenGL.h>
#include <OpenGL/gl3.h>
#include <GLUT/GLUT.h>
//#include "glm"

static void RenderSceneCB()
{
	glClear(GL_COLOR_BUFFER_BIT);
	glutSwapBuffers();
}

static void InitializeGlutCallbacks()
{
	glutDisplayFunc(RenderSceneCB);
}

int main(int argc, char ** argv) {
	// insert code here...
	
	glutInit(&argc, argv);
	
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA);
	glutInitWindowSize(500, 220);
	glutInitWindowPosition(100, 100);
	glutCreateWindow("Tutorial 01");
	
	InitializeGlutCallbacks();
	
	glClearColor(0.6f, 0.0f, 0.0f, 0.0f);
	
	glutMainLoop();
	
	return 0;
}

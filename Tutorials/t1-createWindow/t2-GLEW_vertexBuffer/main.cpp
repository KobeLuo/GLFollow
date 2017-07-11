//
//  main.c
//  t2-GLEW_vertexBuffer
//
//  Created by KobeLuo on 11/07/2017.
//  Copyright © 2017 KobeLuo. All rights reserved.
//

#include <stdio.h>

#include <GL/glew.h>
#include <GL/freeglut.h>
#include "ogldev_math_3d.h"

#include <OpenGL/gl3.h>
#include <GLUT/GLUT.h>




GLuint VBO;

static void RenderSceneCB() {
	
	glClear(GL_COLOR_BUFFER_BIT);
	
	glEnableVertexAttribArray(0);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0);
	
	glDrawArrays(GL_POINTS, 0, 1);
	
	glDisableVertexAttribArray(0);
	
	glutSwapBuffers();
}

static void InitializeGlutCallbacks() {
	
	glutDisplayFunc(RenderSceneCB);
}

static void CreateVertexBuffer() {
	
	Vector3f Vertices[1];
	
	Vertices[0] = Vector3f(0.0f,0.0f,0.0f);
	
	glGenBuffers(1, &VBO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(Vertices), Vertices, GL_STATIC_DRAW);
}

int main(int argc, char ** argv) {
	// insert code here...
	printf("Hello, World!\n");
	
	glutInit(&argc, const_cast<char**>(argv));
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA);
	glutInitWindowSize(1000, 300);
	glutInitWindowPosition(100, 100);
	glutCreateWindow("Tutorial 02");
	
	InitializeGlutCallbacks();
	
	//Must be down after glut is initialized!
	GLenum res = glewInit();
	if (res != GLEW_OK) {
		
		fprintf(stderr, "Error :%s\n",glewGetErrorString(res));
		return -1;
	}
	
	glClearColor(0.2f, 0.8f, 0.0f, 0.0f);
	CreateVertexBuffer();
	glutMainLoop();
	
	return 0;
}

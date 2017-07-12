//
//  main.cpp
//  t4-shaders
//
//  Created by KobeLuo on 11/07/2017.
//  Copyright © 2017 KobeLuo. All rights reserved.
//

#include <iostream>

#include <string.h>
#include <GL/glew.h>
#include <GL/freeglut.h>

#include <ogldev_util.h>
#include <ogldev_math_3d.h>

GLuint VBO;

const char *pVSFileName = "shader.vs";
const char *pFSFileName = "shader.fs";

static void RenderSceneCB() {
	
	glClear(GL_COLOR_BUFFER_BIT);
	
	glEnableVertexAttribArray(0);
	glBindBuffer(GL_ARRAY_BUFFER,VBO);
	glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE,0,0);
	
	glDrawArrays(GL_TRIANGLES, 0, 3);
	glDisableVertexAttribArray(0);
	
	glutSwapBuffers();
}

static void InitializeGlutCallBack() {
	
	glutDisplayFunc(RenderSceneCB);
}

static void CreateVertexBuffer() {
	
	Vector3f Vertices[3];
	
	Vertices[0] = Vector3f(-1.0f, -1.0, 0);
	Vertices[1] = Vector3f(1.0f, -1.0, 0);
	Vertices[2] = Vector3f(0, 1.0, 0);
	
	glGenBuffers(1,&VBO):
}


int main(int argc, char ** argv) {
	// insert code here...
	
	
	
	return 0;
}

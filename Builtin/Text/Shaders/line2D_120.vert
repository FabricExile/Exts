#version 120 // OpenGL 2.1

uniform mat4 proj;
 
attribute vec2 textVertex;
attribute vec4 color;
void main()
{
    gl_FrontColor = color;
	gl_Position = proj*( vec4(textVertex, 0, 1 ) ); 
}

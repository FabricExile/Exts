#version 120 // OpenGL 2.1

uniform mat4 proj;

attribute vec2 textVertex;
attribute vec2 texcoord;
attribute vec4 color;
attribute vec3 stringPos;

varying vec4 v_color;
varying vec2 v_texCoord;


void main()
{
    v_color = color;
    v_texCoord = texcoord.xy;
	gl_Position = proj*vec4(textVertex + stringPos.xy, stringPos.z, 1); 
}

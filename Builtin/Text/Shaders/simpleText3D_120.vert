#version 120 // OpenGL 2.1

uniform mat4 view;
uniform mat4 proj;
uniform vec2 viewportDim;

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
  
	vec4 tr = (proj * view)*vec4(stringPos, 1.0);
	vec3 viewportPointPos = tr.xyz/tr.w;

	gl_Position = proj*(vec4(textVertex/viewportDim, 0, 1)); 
	gl_Position = gl_Position + vec4(viewportPointPos, 1);
}

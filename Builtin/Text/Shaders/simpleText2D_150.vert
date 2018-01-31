#version 150 // OpenGL 3.2

uniform mat4 proj;

in vec2 textVertex;
in vec2 texcoord;
in vec4 color;
in vec3 stringPos;

out vec4 v_color;
out vec2 v_texCoord;


void main()
{
    v_color = color;
    v_texCoord = texcoord.xy;
	gl_Position = proj*vec4(textVertex + stringPos.xy, stringPos.z, 1); 
}

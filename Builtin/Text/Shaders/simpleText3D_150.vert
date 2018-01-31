#version 150 // OpenGL 3.2

uniform mat4 view;
uniform mat4 proj;
uniform vec2 viewportDim;

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
  
	vec4 tr = (proj * view)*vec4(stringPos, 1.0);
	vec3 viewportPointPos = tr.xyz/tr.w;

	gl_Position = proj*(vec4(textVertex/viewportDim, 0, 1)); 
	gl_Position = gl_Position + vec4(viewportPointPos, 1);
}

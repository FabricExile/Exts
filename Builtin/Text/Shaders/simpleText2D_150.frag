#version 150 // OpenGL 3.2

uniform sampler2D texture;
in vec4 v_color;
in vec2 v_texCoord;
out vec4 fragColor;

void main()
{
	float a = texture2D(texture, v_texCoord).r;
	fragColor = vec4(v_color.rgb, v_color.a*a);
}

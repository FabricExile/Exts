#version 120 // OpenGL 2.1

uniform sampler2D texture;
varying vec4 v_color;
varying vec2 v_texCoord;

void main()
{
	float a = texture2D(texture, v_texCoord).r;
	gl_FragColor = vec4(v_color.rgb, v_color.a*a);
}

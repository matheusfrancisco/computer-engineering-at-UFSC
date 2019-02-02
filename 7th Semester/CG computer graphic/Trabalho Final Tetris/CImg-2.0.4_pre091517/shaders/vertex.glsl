#version 120

uniform mat4 modelview;
uniform mat4 projection;

varying vec3 normal;
varying vec3 vertex;
varying vec4 shadowCoord;

void main(){

   mat4 bias = mat4(0.5,0.0,0.0,0.0,
                    0.0,0.5,0.0,0.0,
                    0.0,0.0,0.5,0.0,
                    0.5,0.5,0.5,1.0);

	shadowCoord = bias * projection * modelview * gl_Vertex;
	shadowCoord = shadowCoord/shadowCoord.w;
    vertex = vec3(gl_ModelViewMatrix * gl_Vertex);
    normal = normalize(gl_NormalMatrix * gl_Normal);

    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}

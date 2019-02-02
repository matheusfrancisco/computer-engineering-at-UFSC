varying vec2 texturepos;
varying vec3 normal;
varying vec3 vertex;

void main(){

	texturepos = gl_MultiTexCoord0;

    vertex = vec3(gl_ModelViewMatrix * gl_Vertex);
    normal = normalize(gl_NormalMatrix * gl_Normal);

    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}

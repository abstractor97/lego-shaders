#version 120

varying vec4 texcoord;
varying vec4 normal;

void main(){
  texcoord = gl_MultiTexCoord0;
  vec4 position = gl_Vertex;
  gl_Position = gl_ProjectionMatrix * (gl_ModelViewMatrix * position);
}

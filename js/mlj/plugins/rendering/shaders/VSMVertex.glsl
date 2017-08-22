precision highp float;

uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;

uniform float pointSize;

attribute vec3 position;

varying vec4 worldPoint;

void main() {
  vec4 mvP = modelViewMatrix * vec4(position, 1.0);
  gl_Position = projectionMatrix  * mvP;
  gl_PointSize = pointSize;
  worldPoint = gl_Position; //posizione mondo dal punto di vista luce
}

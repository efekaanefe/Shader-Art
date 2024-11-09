precision mediump float;

uniform float u_time;
uniform vec2 u_resolution;

// https://iquilezles.org/articles/distfunctions2d/
float sdfCircle(vec2 p, float r) {
  // note: sqrt(pow(p.x, 2.0) + pow(p.y, 2.0)) - r;
  return length(p) - r;
}

void main() {
  vec2 uv = (gl_FragCoord.xy - 0.5 * u_resolution.xy)/u_resolution.y; // normalizing window resolution to uv field
  vec3 col = vec3(0.0);
   
  gl_FragColor = vec4(col, 1.0);
}
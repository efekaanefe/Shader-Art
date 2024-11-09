#version 430

out vec4 fragColor;

uniform vec2 resolution;
uniform float time;

// F(pixels) -> Image
void main() {
    vec2 uv = (gl_FragCoord.xy - 0.5 * resolution.xy)/resolution.y; // normalizing window size
    vec3 col = vec3(0.0);
   
    fragColor = vec4(col, 1.0);
}
uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;
uniform sampler2D uTexture;

varying float vElevation;
varying vec2 vUv;

void main(){
    vec3 color = mix(uDepthColor, uSurfaceColor, (vElevation + uColorOffset) * uColorMultiplier);
   //vec4 textureColor = texture2D(uTexture, vUv);

    gl_FragColor = vec4(color, 1.0);
} 
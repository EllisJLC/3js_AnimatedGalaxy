varying vec3 vColor;

void main() {

    // // Disc
    // float intensity = distance(gl_PointCoord, vec2(0.5));
    // intensity = step(0.5, intensity);
    // intensity = 1.0 - intensity;

    // // diffusion
    // float intensity = distance(gl_PointCoord, vec2(0.5));
    // intensity *= 2.0;
    // intensity = 1.0 - intensity;

    // Light point
    float intensity = distance(gl_PointCoord, vec2(0.5));
    intensity = 1.0 - intensity;
    intensity = pow(intensity, 7.0);

    // Final colouring
    vec3 color = mix(vec3(0.0), vColor, intensity);

    gl_FragColor = vec4(vec3(color), 1.0);
    #include <colorspace_fragment>
}
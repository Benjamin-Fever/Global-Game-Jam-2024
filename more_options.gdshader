shader_type spatial;
render_mode unshaded;

// Uniforms for customization
uniform float time = 0.0;
uniform float glitch_strength = 0.5;
uniform float scanline_thickness = 0.1;
uniform float scanline_speed = 2.0;
uniform sampler2D texture_albedo : hint_screen_texture;
uniform sampler2D texture_normal : hint_normal;

void fragment() {
    vec2 uv = UV;

    // Glitch effects
    uv.y += sin(uv.x * 10.0 + time * 5.0) * glitch_strength;
    uv.x += cos(uv.y * 15.0 + time * 3.0) * glitch_strength;

    // Scanlines
    uv.y += sin(uv.x * 100.0 + time * scanline_speed) * scanline_thickness;

    // Sample textures
    vec4 albedo = texture(texture_albedo, uv);
    vec3 normal = texture(texture_normal, uv).rgb * 2.0 - 1.0;

    // Apply glitch-like color distortion
    albedo.rgb += 0.1 * sin(uv.x * 50.0 + time) * normal;

    // Output final color
    ALBEDO = albedo.rgb;
}
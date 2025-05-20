#version 330 compatibility

uniform sampler2D colortex0;

in vec2 texcoord;

/* RENDERTARGETS: 0 */
layout(location = 0) out vec4 color;

void main() {
	vec4 base = texture(colortex0, texcoord);
	if (texcoord.x < 0.5) {
		color = mix(base, vec4(0.0, 1.0, 0.0, 1.0), 0.5);
	} else {
		color = mix(base, vec4(1.0, 0.0, 0.0, 1.0), 0.5);
	}
}
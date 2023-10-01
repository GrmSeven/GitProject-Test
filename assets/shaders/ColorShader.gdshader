shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

void fragment() {
		vec4 screen = textureLod(screen_texture, SCREEN_UV, 0.0);
		float x = 1.5;
		float e = -0.1;
        COLOR = screen + vec4(length(screen.gb)/x + e*screen.b, length(screen.rb)/x + e*screen.r, length(screen.rg)/x + e*screen.g, 0);
}
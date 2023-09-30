shader_type canvas_item;
uniform vec2 player_position;
uniform vec4 color = vec4(0.305, 0.298, 0.341,1);


void fragment(){
	float alpha = distance(UV.xy*TEXTURE_PIXEL_SIZE, TEXTURE_PIXEL_SIZE/2.0)*5.0;
	COLOR = vec4(vec3(0) , alpha);
}
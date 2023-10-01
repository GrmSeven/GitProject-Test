extends Node2D

@export var door: Node2D

@export var lever_color: Color = Color(1, 1, 1, 1)

func _process(delta):
	modulate.a = lever_color.a * global.color_controller.color.a
	modulate.r = lever_color.r * global.color_controller.color.r
	modulate.g = lever_color.g * global.color_controller.color.g
	modulate.b = lever_color.b * global.color_controller.color.b
	
	if (modulate.r == 0 && modulate.g == 0 && modulate.b == 0):
		modulate.a = 0

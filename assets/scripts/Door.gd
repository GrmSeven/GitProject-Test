extends Node2D

@export var sprite: Sprite2D

var open: bool = false

func on_player_interact():
	pass

func door_open():
	open = true
	sprite.modulate = Color(1,1, 1, 0)

func door_close():
	open = false
	sprite.modulate = Color(1,1, 1, 1)

func can_interact():
	pass
	
func cannot_interact():
	pass

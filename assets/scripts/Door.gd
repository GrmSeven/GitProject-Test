extends Node2D

@export var sprite: Sprite2D

@export var open: bool = false

@export var scene_name: String

func on_player_interact():
	if (!open):
		return
	

	if (scene_name == null):
		return
		
	var scene_path = "res://assets/scenes/" + scene_name + ".tscn"
	get_tree().change_scene_to_file(scene_path)

func door_open():
	open = true
	sprite.modulate = Color(1,1, 1, 0)

func door_close():
	open = false
	sprite.modulate = Color(1,1, 1, 1)

func can_interact():
	print("a")
	pass
	
func cannot_interact():
	pass
	

extends Node2D

@export var sprite: Sprite2D
@export var text: RichTextLabel

@export var open: bool = false
var can_interact: bool = false

@export var scene_name: String


func _process(delta):
	if (can_interact && door_open()):
		text.modulate.a = 1
	else:
		text.modulate.a = 0

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
	can_interact = true
	
func cannot_interact():
	can_interact = false
	

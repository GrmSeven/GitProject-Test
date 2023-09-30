extends Area2D

var AA: String = "UHH"

@export var disabled_sprite: Sprite2D
@export var enabled_sprite: Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_player_interact():
	print(AA)
	
func can_interact():
	pass
	
func cannot_interact():
	pass

func get_door():
	return get_owner().door

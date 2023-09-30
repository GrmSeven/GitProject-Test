extends Area2D

var AA: String = "UHH"

@export var disabled_sprite: Texture2D
@export var enabled_sprite: Texture2D

var enabled: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_player_interact():
	enabled = !enabled
	get_child(1).set_texture(enabled_sprite if enabled else disabled_sprite)
	
	var door = get_door()
	if (door == null):
		return
	
	if (enabled):
		door.door_open()
	else:
		door.door_close()
	
func can_interact():
	pass
	
func cannot_interact():
	pass

func get_door():
	if !("door" in owner):
		return null
		
	var door = owner.door
	if door == null || !door.has_method("door_open"):
		return null
		
	return door

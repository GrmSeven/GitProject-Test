extends Node2D

var AA: String = "UHH"
@export var door: Node2D

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

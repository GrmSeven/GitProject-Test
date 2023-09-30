extends CanvasModulate
var mode = 0
var colors = [Vector3(1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, 1)]
var speed = 10
var current = colors[mode]

func _ready():
	color = Color(current[0], current[1], current[2], 1)

func _process(delta):
	mode = 0 if Input.is_key_label_pressed(KEY_1) else (1 if Input.is_key_label_pressed(KEY_2) else (2 if Input.is_key_label_pressed(KEY_3) else mode))
	current = current.move_toward(colors[mode], speed * delta)
	color = Color(current[0], current[1], current[2], 1)

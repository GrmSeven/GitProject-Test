extends CanvasModulate
var speed = 0.2
var colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
var tween_active = false

func _ready():

	if !(get_tree().current_scene.scene_file_path == "res://assets/scenes/Cutscene.tscn"):
		color = Color(colors[global.color_mode][0], colors[global.color_mode][1], colors[global.color_mode][2], 1)
	global.color_controller = self

func _process(_delta):
	if global.movement_on:
		var shift_input = Input.is_action_pressed("shift_color")
		if shift_input and !tween_active:
			tween_active = true
			var tween = create_tween()
			global.color_mode = fmod((global.color_mode + 1), 3)
			tween.tween_property(self, "color", Color.BLACK, speed)
			tween.tween_property(self, "color", Color(colors[global.color_mode][0], colors[global.color_mode][1], colors[global.color_mode][2], 1), speed)
			tween.tween_property(self, "tween_active", false, 0)

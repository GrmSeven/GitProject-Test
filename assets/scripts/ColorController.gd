extends CanvasModulate
var speed = 0.2
var colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
var tween_active = false

func _process(_delta):
	var shift_input = Input.get_axis("shift_color_up", "shift_color_down")
	if shift_input and !tween_active:
		tween_active = true
		var tween = create_tween()
		global.color_mode = fmod((global.color_mode + shift_input), 3)
		tween.tween_property(self, "color", Color.BLACK, speed)
		tween.tween_property(self, "color", Color(colors[global.color_mode][0], colors[global.color_mode][1], colors[global.color_mode][2], 1), speed)
		tween.tween_property(self, "tween_active", false, 0)

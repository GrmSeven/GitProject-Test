extends TileMap

var done = false
var tween
var tween2
var tween3

func _ready():
	global.movement_on = false
	tween = create_tween()
	for i in [$"1", $"2", $"3", $"4", $"5"]:
		tween.tween_property(i, "modulate", Color(1, 1, 1, 0), 0)
	for i in [$"1", $"2", $"3", $"4", $"5"]:
		tween.tween_property(i, "modulate", Color(1, 1, 1, 1), 2).set_ease(Tween.EASE_IN_OUT)
		tween.tween_interval(2)
		tween.tween_property(i, "modulate", Color(1, 1, 1, 0), 1).set_ease(Tween.EASE_OUT_IN)
#	tween.tween_property($ColorRect2, "modulate", Color(1, 1, 1, 0), 2).set_ease(Tween.EASE_OUT_IN)
	tween.tween_property(self, "done", true, 0)
	tween.connect("finished", do_the_thing)	

func _process(_delta):
	if Input.is_key_pressed(KEY_SPACE):
		if !done:
			do_the_thing()
	
func do_the_thing():
	for i in [$"1", $"2", $"3", $"4", $"5"]:
		i.visible = false
	tween.kill()
	tween2 = create_tween()
	tween2.tween_property($"CanvasModulate", "color", Color(0.2, 0.2, 0.2, 1), 0)
	tween2.tween_property($ColorRect2, "modulate", Color(1, 1, 1, 0), 2).set_ease(Tween.EASE_OUT_IN)
	tween2.tween_property(self, "done", true, 0)
	tween2.connect("finished", on_tween2_finished)	
	return
			
			
func on_tween2_finished():
	tween3 = create_tween()
	tween3.tween_property($CharacterBody2D, "position", Vector2(0, -300), 4).set_ease(Tween.EASE_IN)
	tween3.tween_property($Artifact, "visible", false, 1)
	tween3.tween_property($"CanvasModulate", "color", Color.BLACK, 2)
	tween3.tween_property($"CanvasModulate", "color", Color.RED, 2)
	tween3.tween_property($"CanvasModulate", "color", Color.BLACK, 2)
	tween3.parallel()
	tween3.tween_property($CharacterBody2D, "position", Vector2(0, -360), 2).set_ease(Tween.EASE_IN)
	

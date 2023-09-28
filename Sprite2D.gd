extends Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation += 10 * delta
	var mouse = get_global_mouse_position()
	position = mouse

extends CharacterBody2D

const accel: int = 30
const max_speed: int = 150
const sprint_mult: float = 1.5
var sprint
var direction
var facing

func _process(delta):
	sprint = Input.is_key_pressed(KEY_SHIFT)
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction:
		velocity = velocity.move_toward(direction * max_speed * (sprint_mult if sprint else 1), accel)
		facing = direction.ceil()
	else:
		velocity = velocity.move_toward(Vector2.ZERO, accel)
	move_and_slide()

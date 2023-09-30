extends CharacterBody2D

const accel: int = 30
const max_speed: int = 150
var direction
var facing
var prev_pos = Vector2.ZERO
var actual_velocity = Vector2.ZERO

func _process(_delta):
	if (global.paused):
		return
	
	if direction == Vector2.ZERO or actual_velocity.length() == 0:
		$AnimationTree.get("parameters/playback").travel("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Walk")
		$AnimationTree.set("parameters/Idle/blend_position", velocity)	
		$AnimationTree.set("parameters/Walk/blend_position", velocity)	
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction:
		velocity = velocity.move_toward(direction * max_speed, accel)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, accel)
		
	actual_velocity = prev_pos - position
	prev_pos = position
	
	move_and_slide()

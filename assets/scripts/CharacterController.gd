extends CharacterBody2D

const accel: int = 30
const max_speed: int = 150
var direction
var facing

func _process(_delta):
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction:
		velocity = velocity.move_toward(direction * max_speed, accel)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, accel)
		
	if direction == Vector2.ZERO:
		$AnimationTree.get("parameters/playback").travel("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Walk")
		$AnimationTree.set("parameters/Idle/blend_position", velocity)	
		$AnimationTree.set("parameters/Walk/blend_position", velocity)
		
	move_and_slide() 

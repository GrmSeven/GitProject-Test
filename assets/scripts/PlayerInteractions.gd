extends Node


signal on_interactable_changed(newInteractable)
var active_interactable: Node2D


func _process(delta):
	print("0")
	if Input.is_action_just_pressed("interact") && active_interactable != null:
		active_interactable.on_player_interact()

func _on_body_enter(body: Node2D):
	print("a")
	if (active_interactable == null && body.has_method("on_player_interact")):
		print("b")
		active_interactable = body

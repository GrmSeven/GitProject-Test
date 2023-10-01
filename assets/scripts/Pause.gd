extends Control

@export var player: Node2D

func _process(delta):
	if (Input.is_action_just_pressed("pause")):
		if (global.paused):
			resume()
		else:
			pause()
			
func _ready():
	if (!global.paused):
		resume()

func pause():
	position = player.position
	global.paused = true
	show()

func resume():
	global.paused = false
	hide()

func _on_sfx_volume_value_changed(value: float):
	Options.on_sfx_volume_changed(value)

func _on_music_volume_value_changed(value: float):
	Options.on_music_volume_changed(value)

func _on_play_sound_pressed():
	$AudioStreamPlayer.play()

extends Control

func _process(delta):
	if (Input.is_action_just_pressed("pause")):
		if (global.paused):
			resume()
		else:
			pause()

func pause():
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

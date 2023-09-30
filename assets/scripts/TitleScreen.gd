extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/MainScene.tscn")

func _on_sfx_volume_value_changed(value: float):
	Options.on_sfx_volume_changed(value)

func _on_music_volume_value_changed(value: float):
	Options.on_music_volume_changed(value)

func _on_play_sound_pressed():
	$AudioStreamPlayer.play()

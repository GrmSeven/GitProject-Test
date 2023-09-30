extends Node

var sfx_volume = 0.5
var music_volume = 0.5

@onready var sfx_index: int = AudioServer.get_bus_index("SFX")
@onready var music_index: int = AudioServer.get_bus_index("Music")


func _enter_tree():
	on_sfx_volume_changed(sfx_volume)
	on_music_volume_changed(music_volume)
	print("test")

func on_sfx_volume_changed(value: float):
	sfx_volume = value
	AudioServer.set_bus_volume_db(sfx_index, value_to_db(sfx_volume))

func on_music_volume_changed(value: float):
	music_volume = value
	AudioServer.set_bus_volume_db(music_index, value_to_db(music_volume))

func value_to_db(value: float) -> float:
	return 32 * (value - 1)

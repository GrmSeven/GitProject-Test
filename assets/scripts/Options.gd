extends Node

@onready var sfx_index: int = AudioServer.get_bus_index("SFX")
@onready var music_index: int = AudioServer.get_bus_index("Music")

func on_sfx_volume_changed(value: float):
	AudioServer.set_bus_volume_db(sfx_index, value_to_db(value))

func on_music_volume_changed(value: float):
	AudioServer.set_bus_volume_db(music_index, value_to_db(value))

func value_to_db(value: float) -> float:
	return 32 * (value - 1)

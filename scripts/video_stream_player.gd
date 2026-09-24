extends VideoStreamPlayer

@onready var button = $"../PauseButton"

func _on_pause_button_button_down() -> void:
	paused = !paused
	if paused:
		button.text = "Play"
	else:
		button.text = "Pause"


func _on_fullscreen_toggle_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main/main_menu.tscn")

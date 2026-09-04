extends VideoStreamPlayer

@onready var button = $"../PauseButton"

func _on_pause_button_button_down() -> void:
	paused = !paused
	if paused:
		button.text = "Play"
	else:
		button.text = "Pause"

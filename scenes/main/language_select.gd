extends Control

signal collapse_toggled(is_collapsed: bool)

@onready var animation_player = $ColorRect/AnimationPlayer

func _on_minimize_button_toggled(toggled_on: bool) -> void:
	var animation_name = "collapse" if toggled_on else "open"
	animation_player.play(animation_name)
	collapse_toggled.emit(toggled_on)


func _on_english_button_pressed() -> void:
	TranslationServer.set_locale("en")


func _on_spanish_button_pressed() -> void:
	TranslationServer.set_locale("es")

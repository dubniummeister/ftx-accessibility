extends Node

@onready var option1_text = $ScrollContainer/Control/ColorRect2/Option1RichTextLabel
@onready var option2_text = $ScrollContainer/Control/ColorRect2/Option2RichTextLabel
@onready var option3_text = $ScrollContainer/Control/ColorRect2/Option3RichTextLabel
@onready var option4_text = $ScrollContainer/Control/ColorRect2/Option4RichTextLabel
@onready var option5_text = $ScrollContainer/Control/ColorRect2/Option5RichTextLabel
@onready var option6_text = $ScrollContainer/Control/ColorRect2/Option6RichTextLabel

func _on_option_button_1_pressed() -> void:
	if option1_text.visible and option1_text.modulate.a >= 1.0:
		return
	option2_text.visible = false
	option3_text.visible = false
	option4_text.visible = false
	option5_text.visible = false
	option6_text.visible = false
	
	option1_text.modulate.a = 0.0
	option1_text.visible = true
	var tween = create_tween()
	tween.tween_property(option1_text, "modulate:a", 1.0, 0.8)

func _on_option_button_2_pressed() -> void:
	if option2_text.visible and option2_text.modulate.a >= 1.0:
		return
	option1_text.visible = false
	option3_text.visible = false
	option4_text.visible = false
	option5_text.visible = false
	option6_text.visible = false
	
	option2_text.modulate.a = 0.0
	option2_text.visible = true
	var tween = create_tween()
	tween.tween_property(option2_text, "modulate:a", 1.0, 0.8)

func _on_option_button_3_pressed() -> void:
	if option3_text.visible and option3_text.modulate.a >= 1.0:
		return
	option2_text.visible = false
	option1_text.visible = false
	option4_text.visible = false
	option5_text.visible = false
	option6_text.visible = false
	
	option3_text.modulate.a = 0.0
	option3_text.visible = true
	var tween = create_tween()
	tween.tween_property(option3_text, "modulate:a", 1.0, 0.8)

func _on_option_button_4_pressed() -> void:
	if option4_text.visible and option4_text.modulate.a >= 1.0:
		return
	option2_text.visible = false
	option3_text.visible = false
	option1_text.visible = false
	option5_text.visible = false
	option6_text.visible = false
	
	option4_text.modulate.a = 0.0
	option4_text.visible = true
	var tween = create_tween()
	tween.tween_property(option4_text, "modulate:a", 1.0, 0.8)

func _on_option_button_5_pressed() -> void:
	if option5_text.visible and option5_text.modulate.a >= 1.0:
		return
	option2_text.visible = false
	option3_text.visible = false
	option4_text.visible = false
	option1_text.visible = false
	option6_text.visible = false
	
	option5_text.modulate.a = 0.0
	option5_text.visible = true
	var tween = create_tween()
	tween.tween_property(option5_text, "modulate:a", 1.0, 0.8)

func _on_option_button_6_pressed() -> void:
	if option6_text.visible and option6_text.modulate.a >= 1.0:
		return
	option2_text.visible = false
	option3_text.visible = false
	option4_text.visible = false
	option5_text.visible = false
	option1_text.visible = false
	
	option6_text.modulate.a = 0.0
	option6_text.visible = true
	var tween = create_tween()
	tween.tween_property(option6_text, "modulate:a", 1.0, 0.8)

func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main/main_menu.tscn")

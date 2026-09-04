extends Control

@onready var base_min_size_y = custom_minimum_size.y

@export var language_select: Control
@export var collapse_control: Control
@export var nodes_to_shift: Array[Control] = []

var collapse_amount: float

var original_positions: Dictionary = {}

func _ready() -> void:
	collapse_amount = collapse_control.size.y
	for node in nodes_to_shift:
		original_positions[node] = node.position.y
	language_select.collapse_toggled.connect(_on_language_select_toggled)

func _on_language_select_toggled(is_collapsed: bool) -> void:
	var offset = collapse_amount if is_collapsed else 0.0
	custom_minimum_size.y = base_min_size_y - offset
	for node in nodes_to_shift:
		var target_y = original_positions[node] - offset
		var tween = create_tween()
		if is_collapsed:
			tween.tween_interval(0.5)
		tween.tween_property(node, "position:y", target_y, 1.0)

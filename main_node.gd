class_name clicker extends Node2D

var label: Label
var button: Button
var gold: int = 0

func _ready() -> void:
	_get_nodes()
	_connect_signals()
	_update_label()

func _get_nodes() -> void:
	label = get_node("lblGold")
	button = get_node("btnGetGold")

func _connect_signals() -> void:
	button.pressed.connect(_on_button_pressed)

func _generate_gold() -> void:
	gold += 1
	_update_label()

func _on_button_pressed() -> void:
	_generate_gold()

func _update_label() -> void:
	label.text = "GOLD = 	%s" %gold

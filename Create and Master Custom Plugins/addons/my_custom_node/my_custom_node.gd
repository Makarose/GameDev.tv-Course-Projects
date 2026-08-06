@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("CustomButton", "Button", preload("res://addons/my_custom_node/custom_button.gd"), preload("res://addons/my_custom_node/icon.svg"))


func _exit_tree() -> void:
	remove_custom_type("CustomButton")

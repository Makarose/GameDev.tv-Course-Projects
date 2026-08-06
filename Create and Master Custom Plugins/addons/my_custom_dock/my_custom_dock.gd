@tool
extends EditorPlugin

var my_custom_menu


func _enter_tree() -> void:
	my_custom_menu = preload("res://addons/my_custom_dock/custom_dock.tscn").instantiate()
	
	#add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_UL, my_custom_menu)
	#add_control_to_bottom_panel(my_custom_menu, "Custom Menu")
	add_control_to_container(EditorPlugin.CONTAINER_TOOLBAR, my_custom_menu)


func _exit_tree() -> void:
	#remove_control_from_docks(my_custom_menu)
	#remove_control_from_bottom_panel(my_custom_menu)
	remove_control_from_container(EditorPlugin.CONTAINER_TOOLBAR, my_custom_menu)
	my_custom_menu.queue_free()

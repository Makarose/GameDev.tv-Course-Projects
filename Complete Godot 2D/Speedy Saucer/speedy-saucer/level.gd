extends Node2D

func _on_maze_body_exited(body) -> void:
	get_tree().reload_current_scene()

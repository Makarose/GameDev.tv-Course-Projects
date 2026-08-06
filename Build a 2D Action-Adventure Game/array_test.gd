extends Node2D

var arr1: Array[int] = [10, 20, 30, 40, 50]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(arr1)
	print(arr1[0])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

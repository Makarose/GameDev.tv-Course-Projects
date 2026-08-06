extends Node2D

@export var UILayerScene: PackedScene  # Assign your ui_layer.tscn here
@export var is_final_level:  bool = false

var ui_layer_instance = null
var hud = null

func _ready():
	if UILayerScene == null:
		push_error("UILayerScene is NOT assigned in the Inspector!")
		return

	ui_layer_instance = UILayerScene.instantiate()
	if ui_layer_instance == null:
		push_error("Failed to instantiate UILayerScene!")
		return

	# Add UILayer as child of root node
	add_child(ui_layer_instance)

	# If UILayer is Control, ensure position & size fills viewport
	if ui_layer_instance is Control:
		ui_layer_instance.rect_position = Vector2.ZERO
		ui_layer_instance.rect_size = get_viewport_rect().size
		print("UILayer size: ", ui_layer_instance.rect_size)
		print("UILayer position: ", ui_layer_instance.rect_position)

	hud = ui_layer_instance.get_node_or_null("HUD")
	if hud == null:
		push_error("HUD node NOT found inside UILayer instance!")
		return

	print("HUD found inside UILayer!")
	hud.set_time_label(5)  # example call to your method

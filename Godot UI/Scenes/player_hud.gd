extends CanvasLayer

@onready var player: Player = get_tree().get_first_node_in_group("player")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%CoinCounterLabel.text = "0"
	player.coin_collected.connect(_on_coin_collected)

func _on_coin_collected(current_coins: int):
	%CoinCounterLabel.text = str(current_coins)

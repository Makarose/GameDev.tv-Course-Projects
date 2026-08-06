@tool
extends Button

func _enter_tree():
	pressed.connect(custom_button_pressed)
	
func custom_button_pressed():
	print("Custom button pressed!")

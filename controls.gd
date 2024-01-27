extends Control

@onready var camera = get_parent().get_node("Camera2D")



func _on_button_pressed():
	camera.offset.x -= 50

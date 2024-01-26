extends Control

@onready var camera = $Camera2D

var res = [Vector2(1.15,1.25),Vector2(0.75,0.95),Vector2(0.8,0.85),Vector2(1,1)]

func _on_button_pressed():
	get_tree().change_scene_to_file("res://start_menu.tscn")


func _on_option_button_item_selected(index):
	camera.zoom = res[index]

extends Control

var res = [Vector2(690,420)]

func _on_button_pressed():
	get_tree().change_scene_to_file("res://start_menu.tscn")


func _on_option_button_item_selected(index):
	pass

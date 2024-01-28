extends Window

@onready var label = $Panel/Label

func _on_no_button_pressed():
	hide()
	label.text = "Are you sure?"

func _on_yes_button_pressed():
	get_tree().quit()


func _on_close_requested():
	hide()
	label.text = "Are you sure?"
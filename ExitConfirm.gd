extends Window

@onready var label = $Panel/Label

func _on_no_button_pressed():
	hide()
	label.text = "Are you sure?"

func _on_yes_button_pressed():
	label.text = "Then just alt-f4"


func _on_close_requested():
	hide()
	label.text = "Are you sure?"

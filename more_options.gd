extends Control

@onready var slide = $Panel/HSlider
@onready var butt = $Panel/Button

var val = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	butt.modulate = Color(1,1,1,val)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	val = slide.value*2
	butt.modulate = Color(1,1,1,val/255)
	if val > 127:
		butt.disabled = false
	else:
		butt.disabled = true

func _on_button_pressed():
	get_tree().change_scene_to_file("res://even_more.tscn")
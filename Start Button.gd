extends TextureButton

@onready var animPlayer = get_parent().get_node("AnimationPlayer")

func _ready():
	visible = !Global.started

func _pressed():
	Global.started = true
	animPlayer.play("StartAnimation")

func _input(event):
	if animPlayer.is_playing():
		get_viewport().set_input_as_handled()

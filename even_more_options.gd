extends Control

@onready var sizeSlider : HSlider = $size
@onready var vSync : CheckBox = $VSync
@export var syncNode : Array[Control] = []
@export var syncPosNode : Array[Control] = []

func _process(delta):
	vSync.scale = Vector2(0.1 * sizeSlider.value, 0.1 * sizeSlider.value)
	if (vSync.scale.x >= 1 and !vSync.button_pressed):
		vSync.disabled = false
		


	


func _on_v_sync_pressed():
	vSync.disabled = true
	for i in range(0, syncNode.size()):
		syncNode[i].position = syncPosNode[i].position

extends Control

@onready var sizeSlider : HSlider = $size
@onready var vSync : CheckBox = $VSync
@export var syncNode : Array[Control] = []
@export var syncPosNode : Array[Control] = []
@onready var volume = $volume
@onready var pitch = $pitch

func _ready():
	volume.value = 0.0
	pitch.value = 1.0

func _process(delta):
	vSync.scale = Vector2(0.1 * sizeSlider.value, 0.1 * sizeSlider.value)
	if (vSync.scale.x >= 1 and !vSync.button_pressed):
		vSync.disabled = false
	Global.db = volume.value
	Global.pitch = pitch.value


	


func _on_v_sync_pressed():
	vSync.disabled = true
	for i in range(0, syncNode.size()):
		syncNode[i].position = syncPosNode[i].position

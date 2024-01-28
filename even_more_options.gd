extends Control

@onready var sizeSlider : HSlider = $size
@onready var vSync : CheckBox = $VSync
@export var syncNode : Array[Control] = []
@export var syncPosNode : Array[Control] = []
@onready var volume = $volume
@onready var pitch = $pitch
@onready var num = $volume/PrimeNo
@onready var window = $StartButton/ExitConfirm

@onready var primes = [-29.0,-23.0,-19.0,-17.0,-13.0,-11.0,-7.0,-5.0,-3.0,-2.0,
2.0, 3.0, 5.0, 7.0, 11.0, 13.0, 17.0, 19.0, 23.0, 29.0, 31.0, 37.0, 41.0, 43.0, 
47.0, 53.0, 59.0, 61.0, 67.0, 71.0, 73.0, 79.0, 83.0, 89.0, 97.0]

func _ready():
	volume.value = 10
	pitch.value = 1.0

func _process(delta):
	vSync.scale = Vector2(0.1 * sizeSlider.value, 0.1 * sizeSlider.value)
	if (vSync.scale.x >= 1 and !vSync.button_pressed):
		vSync.disabled = false
	Global.db = primes[volume.value]
	num.text = str(primes[volume.value])
	Global.pitch = pitch.value


	


func _on_v_sync_pressed():
	vSync.disabled = true
	for i in range(0, syncNode.size()):
		syncNode[i].position = syncPosNode[i].position


func _on_start_button_pressed():
	window.show()

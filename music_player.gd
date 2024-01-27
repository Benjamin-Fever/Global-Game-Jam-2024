extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	volume_db = Global.db
	pitch_scale = Global.pitch


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	volume_db = Global.db
	pitch_scale = Global.pitch

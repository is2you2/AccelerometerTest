extends Control


func _ready():
	pass


func _process(delta):
	var acc:= Input.get_accelerometer()
	$CenterContainer/VBoxContainer/x.text = 'X: %s' % acc.x
	$CenterContainer/VBoxContainer/y.text = 'Y: %s' % acc.y
	$CenterContainer/VBoxContainer/z.text = 'Z: %s' % acc.z

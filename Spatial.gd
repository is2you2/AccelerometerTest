extends Control


func _ready():
	pass


func _process(delta):
	var acc:= Input.get_accelerometer()
	$CenterContainer/hbox/acc/x.text = 'accX: %s' % acc.x
	$CenterContainer/hbox/acc/y.text = 'accY: %s' % acc.y
	$CenterContainer/hbox/acc/z.text = 'accZ: %s' % acc.z
	var gyro:= Input.get_gyroscope()
	$CenterContainer/hbox/gyro/x.text = 'gyroX: %s' % gyro.x
	$CenterContainer/hbox/gyro/y.text = 'gyroY: %s' % gyro.y
	$CenterContainer/hbox/gyro/z.text = 'gyroZ: %s' % gyro.z

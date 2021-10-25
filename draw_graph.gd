extends VBoxContainer

# Vec3
var pos:= []
const WIDTH:= 210
const HEIGHT:= 280

const colx:= Color.red
const coly:= Color.green
const colz:= Color.blue

func _draw():
	var _size:= pos.size()
	if _size > 1:
		for i in range(1, _size):
			draw_line(Vector2(i * 2 - 1, HEIGHT - pos[i - 1].x), Vector2(i * 2, HEIGHT - pos[i].x), colz)
			draw_line(Vector2(i * 2 - 1, HEIGHT - pos[i - 1].y), Vector2(i * 2, HEIGHT - pos[i].y), coly)
			draw_line(Vector2(i * 2 - 1, HEIGHT - pos[i - 1].z), Vector2(i * 2, HEIGHT - pos[i].z), colx)

func _process(delta):
	if pos.size() > 210:
		pos.pop_front()
	update()

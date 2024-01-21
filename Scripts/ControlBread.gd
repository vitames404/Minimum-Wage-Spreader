extends Control

var brush_size = 30
var brush_color = Color.BLACK
var strokes = []  # Array to store stroke data

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				_start_drawing(event.position)
			else:
				_stop_drawing()

func _draw():
	for stroke in strokes:
		for i in range(1, len(stroke)):
			draw_circle(stroke[i - 1], stroke[i], brush_color)
	queue_redraw()

func _start_drawing(pos):
	strokes.append([pos])

func _stop_drawing():
	if len(strokes) > 0:
		strokes[-1].append(get_local_mouse_position())
		print(get_local_mouse_position())
